defmodule Godin.Experiencias.EstudioInstitucion do
    use Ecto.Schema
    import Ecto.Changeset

    schema "estudio_institucion" do
        belongs_to :estudio, Godin.Experiencias.Estudio
        belongs_to :institucion, Godin.Experiencias.Institucion
        has_many :usuario_estudio, Godin.Usuarios.UsuarioEstudio
        
        timestamps()
    end
end