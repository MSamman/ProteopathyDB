defmodule ProteopathyDb.Proteopathy.Evidence do
  use Ecto.Schema
  import Ecto.Changeset

  schema "evidences" do
    field :authors, :string
    field :doi, :string
    field :title, :string
    field :year, :integer

    timestamps()
  end

  @doc false
  def changeset(evidence, attrs) do
    evidence
    |> cast(attrs, [:doi, :title, :authors, :year])
    |> validate_required([:doi, :title, :authors, :year])
    |> unique_constraint(:doi)
  end
end
