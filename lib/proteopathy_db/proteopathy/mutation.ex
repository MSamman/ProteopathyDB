defmodule ProteopathyDb.Proteopathy.Mutation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "mutations" do
    field :genesis, Ecto.Enum, values: [:de_novo, :hereditary, :sporadic]
    field :mutation, :string
    field :uniprot_id, :id
    field :phenotypes, :id
    field :evidences, :id

    timestamps()
  end

  @doc false
  def changeset(mutation, attrs) do
    mutation
    |> cast(attrs, [:mutation, :genesis])
    |> validate_required([:mutation, :genesis])
  end
end
