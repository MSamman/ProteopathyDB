defmodule ProteopathyDb.Repo.Migrations.CreateEvidences do
  use Ecto.Migration

  def change do
    create table(:evidences) do
      add :doi, :string
      add :title, :string
      add :authors, :string
      add :year, :integer

      timestamps()
    end

    create unique_index(:evidences, [:doi])
  end
end
