defmodule Godin.Repo.Migrations.CreateSesion do
  use Ecto.Migration

  def change do
    create table(:sesion) do
      add :fecha_inicial, :utc_datetime
      add :fecha_final, :utc_datetime
      add :sesion_hash, :string
      add :usuario_id, references(:usuario)

      timestamps()
    end
  end
end
