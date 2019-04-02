defmodule Godin.Repo.Migrations.CreateUsuario do
  use Ecto.Migration

  def change do
    create table(:usuario) do
      add :nombre, :string
      add :apellido_paterno, :string
      add :apellido_materno, :string
      add :telefono, :integer
      add :correo, :string
      add :tipo_usuario, :integer
      add :foto_usuario, :string
      
      timestamps()
    end
  end
end
