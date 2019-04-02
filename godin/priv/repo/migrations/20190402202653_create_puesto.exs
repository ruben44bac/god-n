defmodule Godin.Repo.Migrations.CreatePuesto do
  use Ecto.Migration

  def change do
    create table(:puesto) do
      add :nombre_puesto, :string
      add :descripcion_puesto, :string
      add :especialidad_id, references(:especialidad)

      timestamps()
    end
  end
end
