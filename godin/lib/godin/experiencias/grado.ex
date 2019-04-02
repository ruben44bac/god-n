defmodule Godin.Experiencias.Grado do
    use Ecto.Schema
    import Ecto.Changeset

    schema "grado" do
        field :nombre_grado, :string
        has_many :estudio, Godin.Experiencias.Estudio

        timestamps() 
    end
end