# Since configuration is shared in umbrella projects, this file
# should only configure the :godin_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :godin_web,
  ecto_repos: [Godin.Repo],
  generators: [context_app: :godin]

# Configures the endpoint
config :godin_web, GodinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iwdf+cWhsg7I6cvRsz8w8C1RhNaEhWB8gzy1ZFU24J9EbsZ7AUwWHi3I+Irgf5Ug",
  render_errors: [view: GodinWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GodinWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
