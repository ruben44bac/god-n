defmodule Godin.Experiencias.Habilidad do
    use Ecto.Schema
    import Ecto.Changeset

    schema "habilidad" do
        field :nombre_habilidad, :string
        field :nivel_habilidad, :integer
        has_many :usuario_habilidad, Godin.Usuarios.UsuarioHabilidad

        timestamps()
    end
end