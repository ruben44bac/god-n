defmodule Godin.Repo.Migrations.CreateUbicacionEmpresa do
  use Ecto.Migration

  def change do
    create table(:ubicacion_empresa) do
      add :empresa_id, references(:empresa)
      add :direccion_id, references(:direccion)

      timestamps()
    end
  end
end
