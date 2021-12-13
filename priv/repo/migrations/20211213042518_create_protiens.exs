defmodule ProteopathyDb.Repo.Migrations.CreateProtiens do
  use Ecto.Migration

  def change do
    create table(:protiens) do
      add :uniprot_id, :string
      add :gene_name, :string
      add :protien_name, :string
      add :sequence, :string

      timestamps()
    end
  end
end
