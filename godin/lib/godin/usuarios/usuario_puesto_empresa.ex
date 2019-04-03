defmodule Godin.Usuario.UsuarioPuestoEmpresa do
    use Ecto.Schema
    import Ecto.Changeset

    schema "usuario_puesto_empresa" do
        field :descripcion, :string
        field :fecha_inicio, :utc_datetime
        field :fecha_fin, :utc_datetime
        belongs_to :usuario, Godin.Usuarios.Usuario
        belongs_to :puesto, Godin.Trabajos.Puesto
        belongs_to :ubicacion_empresa, Godin.Empresas.UbicacionEmpresa

        timestamps()
    end
end