defmodule Godin.Repo.Migrations.CreateVacante do
  use Ecto.Migration

  def change do
    create table(:vacante) do
      add :descripcion, :string
      add :sueldo, :decimal
      add :puesto_id, references(:puesto)
      add :estudio_id, references(:estudio)
      add :ubicacion_empresa_id, references(:ubicacion_empresa)

      timestamps()
    end
  end
end
