defmodule Godin.Repo.Migrations.CreateCalificacionEmpresa do
  use Ecto.Migration

  def change do
    create table(:calificacion_empresa) do
      add :calificacion_empresa, :decimal
      add :descripcion, :string
      add :fecha_registro, :utc_datetime
      add :empresa_id, references(:empresa)
      add :usuario_id, references(:usuario)

      timestamps()
    end
  end
end
