defmodule Godin.Repo.Migrations.CreateInstitucion do
  use Ecto.Migration

  def change do
    create table(:institucion) do
        add :nombre, :string

        timestamps()
    end
  end
end
