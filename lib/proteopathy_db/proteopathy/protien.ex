defmodule ProteopathyDb.Proteopathy.Protien do
  use Ecto.Schema
  import Ecto.Changeset

  schema "protiens" do
    field :gene_name, :string
    field :protien_name, :string
    field :sequence, :string
    field :uniprot_id, :string

    timestamps()
  end

  @doc false
  def changeset(protien, attrs) do
    protien
    |> cast(attrs, [:uniprot_id, :gene_name, :protien_name, :sequence])
    |> validate_required([:uniprot_id, :gene_name, :protien_name, :sequence])
  end
end
