defmodule Godin.Usuarios.Usuario do
    use Ecto.Schema
    import Ecto.Changeset

    schema "usuario" do
        field :nombre, :string
        field :apellido_paterno, :string
        field :apellido_materno, :string
        field :telefono, :integer
        field :correo, :string
        field :tipo_usuario, :integer
        field :foto_usuario, :string
        has_many :portafolio_evidencia, Godin.Experiencias.PortafolioEvidencia
        has_many :sesion, Godin.Accesos.Sesion
        has_many :calificacion_empresa, Godin.Empresas.CalificacionEmpresa
        has_many :usuario_habilidad, Godin.Usuarios.UsuarioHabilidad
        has_many :usuario_estudio, Godin.Usuarios.UsuarioEstudio
        has_many :usuario_puesto_empresa, Godin.Usuario.UsuarioPuestoEmpresa

        timestamps()
    end
end