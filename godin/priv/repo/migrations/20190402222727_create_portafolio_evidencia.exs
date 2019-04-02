defmodule Godin.Repo.Migrations.CreatePortafolioEvidencia do
  use Ecto.Migration

  def change do
    create table(:portafolio_evidencia) do
      add :nombre_portafolio_evidencia, :string
      add :descripcion, :string
      add :archivo, :string
      add :usuario_id, references(:usuario)

      timestamps()
    end
  end
end
