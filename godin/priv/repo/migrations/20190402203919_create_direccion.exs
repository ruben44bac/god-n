defmodule Godin.Repo.Migrations.CreateDireccion do
  use Ecto.Migration

  def change do
    create table(:direccion) do
      add :calle, :string
      add :colonia, :string
      add :numero_exterior, :string
      add :codigo_postal, :integer
      add :municipio, :string
      add :pais, :string

      timestamps()
    end
  end
end
