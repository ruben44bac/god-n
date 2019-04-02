defmodule Godin.Experiencias.Especialidad do
    use Ecto.Schema
    import Ecto.Changeset

    schema "especialidad" do
        field :nombre_especialidad, :string
        belongs_to :area, Godin.Experiencias.Area
        has_many :puesto, Godin.Trabajos.Puesto

        timestamps()
    end
end