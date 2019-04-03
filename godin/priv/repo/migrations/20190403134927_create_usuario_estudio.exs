defmodule Godin.Repo.Migrations.CreateUsuarioEstudio do
  use Ecto.Migration

  def change do
    create table(:usuario_estudio) do
      add :fecha_inicio, :utc_datetime
      add :fecha_fin, :utc_datetime
      add :usuario_id, references(:usuario)
      add :estudio_institucion_id, references(:estudio_institucion)

      timestamps()
    end
  end
end
