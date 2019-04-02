defmodule Godin.Repo.Migrations.CreateEstudio do
  use Ecto.Migration

  def change do
    create table(:estudio) do
      add :nombre_estudio, :string
      add :grado_id, references(:grado)

      timestamps()
    end
  end
end
