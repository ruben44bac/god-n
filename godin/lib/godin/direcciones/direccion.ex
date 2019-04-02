defmodule Godin.Direcciones.Direccion do
    use Ecto.Schema
    import Ecto.Changeset

    schema "direccion" do
        field :calle, :string
        field :colonia, :string
        field :numero_exterior, :string
        field :codigo_postal, :integer
        field :municipio, :string
        field :pais, :string
        has_many :empresa, Godin.Empresas.Empresa
        has_many :ubicacion_empresa, Godin.Empresas.UbicacionEmpresa

        timestamps()
    end
end