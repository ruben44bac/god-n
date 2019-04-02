defmodule Godin.Experiencias.Habilidad do
    use Ecto.Schema
    import Ecto.Changeset

    schema "habilidad" do
        field :nombre_habilidad, :string
        field :nivel_habilidad, :integer

        timestamps()
    end
end