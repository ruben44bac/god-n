defmodule Godin.Experiencias.Area do
    use Ecto.Schema
    import Ecto.Changeset

    schema "area" do
        field :nombre_area, :string
        has_many :especialidad, Godin.Experiencias.Especialidad

        timestamps() 
    end
end