defmodule Godin.Repo.Migrations.CreateEmpresa do
  use Ecto.Migration

  def change do
    create table(:empresa) do
      add :razon_social, :string
      add :telefono, :integer
      add :correo, :string
      add :giro, :string
      add :direccion_id, references(:direccion)

      timestamps()
    end
  end
end
