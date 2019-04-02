defmodule Godin.Repo.Migrations.CreateGrado do
  use Ecto.Migration

  def change do
    create table(:grado) do
        add :nombre_grado, :string

        timestamps()
    end
  end
end
