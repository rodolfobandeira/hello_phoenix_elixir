use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_phoenix_elixir, HelloPhoenixElixir.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :hello_phoenix_elixir, HelloPhoenixElixir.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "hello_phoenix_elixir_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
