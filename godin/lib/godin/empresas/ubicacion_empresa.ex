defmodule Godin.Empresas.UbicacionEmpresa do
    use Ecto.Schema
    import Ecto.Changeset

    schema "ubicacion_empresa" do
        belongs_to :empresa, Godin.Empresas.Empresa
        belongs_to :direccion, Godin.Direcciones.Direccion
        has_many :vacante, Godin.Trabajos.Vacante

        timestamps()
    end
end