# Since configuration is shared in umbrella projects, this file
# should only configure the :godin application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :godin, Godin.Repo,
  username: "postgres",
  password: "Qaz123456",
  database: "godin_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
