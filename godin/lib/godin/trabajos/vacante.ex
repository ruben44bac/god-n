defmodule Godin.Trabajos.Vacante do
    use Ecto.Schema
    import Ecto.Changeset

    schema "vacante" do
        field :descripcion, :string
        field :sueldo, :decimal
        belongs_to :puesto, Godin.Trabajos.Puesto
        belongs_to :estudio, Godin.Experiencias.Estudio
        belongs_to :ubicacion_empresa, Godin.Empresas.UbicacionEmpresa

        timestamps()
    end
end