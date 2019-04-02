defmodule Godin.Empresas.Empresa do
    use Ecto.Schema
    import Ecto.Changeset

    schema "empresa" do
        field :razon_social, :string
        field :telefono, :integer
        field :correo, :string
        field :giro, :string
        belongs_to :direccion, Godin.Direcciones.Direccion
        has_many :ubicacion_empresa, Godin.Empresas.UbicacionEmpresa

        timestamps()
    end
end