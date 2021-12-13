defmodule ProteopathyDb.Proteopathy.Phenotype do
  use Ecto.Schema
  import Ecto.Changeset

  schema "phenotypes" do
    field :abbreviation, :string
    field :name, :string
    field :omim_link, :string
    field :snippet, :string

    timestamps()
  end

  @doc false
  def changeset(phenotype, attrs) do
    phenotype
    |> cast(attrs, [:abbreviation, :name, :snippet, :omim_link])
    |> validate_required([:abbreviation, :name, :snippet, :omim_link])
    |> unique_constraint(:abbreviation)
  end
end
