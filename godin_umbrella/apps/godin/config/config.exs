# Since configuration is shared in umbrella projects, this file
# should only configure the :godin application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :godin,
  ecto_repos: [Godin.Repo]

import_config "#{Mix.env()}.exs"
