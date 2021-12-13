defmodule ProteopathyDb.Repo.Migrations.CreatePhenotypes do
  use Ecto.Migration

  def change do
    create table(:phenotypes) do
      add :abbreviation, :string
      add :name, :string
      add :snippet, :string
      add :omim_link, :string

      timestamps()
    end

    create unique_index(:phenotypes, [:abbreviation])
  end
end
