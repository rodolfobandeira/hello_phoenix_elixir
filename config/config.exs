# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello_phoenix_elixir,
  ecto_repos: [HelloPhoenixElixir.Repo]

# Configures the endpoint
config :hello_phoenix_elixir, HelloPhoenixElixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Q55kU8wFjMSeKeGVmXzi/JopKZptMJXLFNVjXde2jiLtqAzR0EmbC3pABMMINmUY",
  render_errors: [view: HelloPhoenixElixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloPhoenixElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
