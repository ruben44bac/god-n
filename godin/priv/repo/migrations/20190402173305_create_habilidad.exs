defmodule Godin.Repo.Migrations.CreateHabilidad do
  use Ecto.Migration

  def change do
    create table(:habilidad) do
      add :nombre_habilidad, :string
      add :nivel_habilidad, :integer

      timestamps()
    end
  end
end
