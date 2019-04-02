defmodule Godin.Repo.Migrations.CreateEspecialidad do
  use Ecto.Migration

  def change do
    create table(:especialidad) do
      add :nombre_especialidad, :string
      add :area_id, references(:area)

      timestamps()
    end
  end
end
