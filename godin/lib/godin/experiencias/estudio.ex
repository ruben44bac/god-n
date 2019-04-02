defmodule Godin.Experiencias.Estudio do
    use Ecto.Schema
    import Ecto.Changeset

    schema "estudio" do
        field :nombre_estudio, :string
        belongs_to :grado, Godin.Experiencias.Grado
        has_many :estudio_institucion, Godin.Experiencias.EstudioInstitucion
        has_many :vacante, Godin.Trabajos.Vacante

        timestamps() 
    end
end