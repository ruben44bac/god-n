defmodule Godin.Experiencias.Institucion do
    use Ecto.Schema
    import Ecto.Changeset

    schema "institucion" do
        field :nombre, :string
        has_many :estudio_institucion, Godin.Experiencias.EstudioInstitucion

        timestamps() 
    end
end