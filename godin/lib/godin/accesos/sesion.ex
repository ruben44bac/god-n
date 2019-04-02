defmodule Godin.Accesos.Sesion do
    use Ecto.Schema
    import Ecto.Changeset

    schema "sesion" do
        field :fecha_inicial, :utc_datetime
        field :fecha_final, :utc_datetime
        field :sesion_hash, :string
        belongs_to :usuario, Godin.Usuarios.Usuario

        timestamps()
    end
end