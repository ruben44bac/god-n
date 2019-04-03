defmodule Godin.Repo.Migrations.CreateUsuarioHabilidad do
  use Ecto.Migration

  def change do
    create table(:usuario_habilidad) do
      add :habilidad_id, references(:habilidad)
      add :usuario_id, references(:usuario)

      timestamps()
    end
  end
end
