defmodule Godin.Usuarios.UsuarioHabilidad do
    use Ecto.Schema
    import Ecto.Changeset

    schema "usuario_habilidad" do
        belongs_to :habilidad, Godin.Experiencias.Habilidad
        belongs_to :usuario, Godin.Usuarios.Usuario

        timestamps()
    end
end