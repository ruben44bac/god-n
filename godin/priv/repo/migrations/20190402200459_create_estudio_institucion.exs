defmodule Godin.Repo.Migrations.CreateEstudioInstitucion do
  use Ecto.Migration

  def change do
    create table(:estudio_institucion) do
      add :estudio_id, references(:estudio)
      add :institucion_id, references(:institucion)

      timestamps()
    end
  end
end
