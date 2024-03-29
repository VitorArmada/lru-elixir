# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lru_cache_validere,
  ecto_repos: [LruCacheValidere.Repo]

# Configures the endpoint
config :lru_cache_validere, LruCacheValidereWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "NC5mBL7NGRVISiayx4BL5Dt1lxFCsrxS96BpaumRPjadvsQjYogwO37jCxPDGegq",
  render_errors: [view: LruCacheValidereWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LruCacheValidere.PubSub,
  live_view: [signing_salt: "4qFHxsTW"]

# Configures LRU Cache
config :lru_cache_validere,
  lru_cache_name: :lru_cache,
  max_size: 4

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
