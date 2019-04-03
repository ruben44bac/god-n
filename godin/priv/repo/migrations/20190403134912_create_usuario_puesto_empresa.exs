defmodule Godin.Repo.Migrations.CreateUsuarioPuestoEmpresa do
  use Ecto.Migration

  def change do
    create table(:usuario_puesto_empresa) do
      add :descripcion, :string
      add :fecha_inicio, :utc_datetime
      add :fecha_fin, :utc_datetime
      add :usuario_id, references(:usuario)
      add :puesto_id, references(:puesto)
      add :ubicacion_empresa_id, references(:ubicacion_empresa)

      timestamps()
    end
  end
end
