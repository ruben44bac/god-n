defmodule Godin.Experiencias.PortafolioEvidencia do
    use Ecto.Schema
    import Ecto.Changeset

    schema "portafolio_evidencia" do
        field :nombre_portafolio_evidencia, :string
        field :descripcion, :string
        field :archivo, :string
        belongs_to :usuario, Godin.Usuarios.Usuario

        timestamps()
    end
end