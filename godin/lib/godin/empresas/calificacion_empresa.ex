defmodule Godin.Empresas.CalificacionEmpresa do
    use Ecto.Schema
    import Ecto.Changeset

    schema "calificacion_empresa" do
        field :calificacion_empresa, :decimal
        field :descripcion, :string
        field :fecha_registro, :utc_datetime
        belongs_to :empresa, Godin.Empresas.Empresa
        belongs_to :usuario, Godin.Usuarios.Usuario

        timestamps()        
    end
end