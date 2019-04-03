defmodule Godin.Repo.Migrations.ModifyUsuarioFechaNacPass do
  use Ecto.Migration

  def change do
    alter table(:usuario) do
      add :contrasena_usuario, :string
      add :fecha_nacimiento, :date
    end
  end
end
