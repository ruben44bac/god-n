defmodule Godin.Usuarios.UsuarioEstudio do
    use Ecto.Schema
    import Ecto.Changeset

    schema "usuario_estudio" do
        field :fecha_inicio, :utc_datetime
        field :fecha_fin, :utc_datetime
        belongs_to :usuario, Godin.Usuarios.Usuario
        belongs_to :estudio_institucion, Godin.Experiencias.EstudioInstitucion

        timestamps()
    end
end