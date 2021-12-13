defmodule ProteopathyDbWeb.ProteinController do
  import Ecto.Query, only: [from: 2]

  use ProteopathyDbWeb, :controller


  alias ProteopathyDb.Proteopathy.Protien
  alias ProteopathyDb.Proteopathy.Mutation
  alias ProteopathyDb.Proteopathy.Phenotype
  alias ProteopathyDb.Repo

  def index(conn, %{"uniprot_id" => uniprot_id}) do
    protein = Repo.get_by(Protien, uniprot_id: uniprot_id)
    query  = from m in Mutation,
      where: m.uniprot_id == ^(protein.id)

    mutations = Repo.all(query)
    IO.puts(:stdio, protein.id)
    phenotypes = Repo.all(Phenotype)
    indexMap = mutationIndexMapset(mutations)
    render(conn, "index.html", protein: protein, mutations: mutations, phenotypes: phenotypes, indexMap: indexMap)
  end

  def mutationIndexMapset(mutations) do
    MapSet.new(
      mutations
      |> Enum.map(fn x -> Regex.run(~r/(\d+)/, x.mutation, capture: :first) end)
      |> Enum.filter(fn x -> x != nil end )
      |> Enum.map(fn x -> String.to_integer(hd(x)) end)
    )
  end

end
