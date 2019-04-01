defmodule Godin.Repo do
  use Ecto.Repo,
    otp_app: :godin,
    adapter: Ecto.Adapters.Postgres
end
