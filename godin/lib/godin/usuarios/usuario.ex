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

        timestamps()
    end
end