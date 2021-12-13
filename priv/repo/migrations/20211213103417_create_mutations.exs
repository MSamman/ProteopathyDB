defmodule ProteopathyDb.Repo.Migrations.CreateMutations do
  use Ecto.Migration

  def change do
    create table(:mutations) do
      add :mutation, :string
      add :genesis, :string
      add :uniprot_id, references(:protiens, on_delete: :nothing)
      add :phenotypes, references(:phenotypes, on_delete: :nothing)
      add :evidences, references(:evidences, on_delete: :nothing)

      timestamps()
    end

    create index(:mutations, [:uniprot_id])
    create index(:mutations, [:phenotypes])
    create index(:mutations, [:evidences])
  end
end
