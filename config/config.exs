# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :weather_net,
  ecto_repos: [WeatherNet.Repo]

# Configures the endpoint
config :weather_net, WeatherNetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YTv32MQUfE/Y+E/GTwecroQCOqk7MrpDp1MgW36u7M1rGaMsoeYOvIP/Rqxp040+",
  render_errors: [view: WeatherNetWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WeatherNet.PubSub,
  live_view: [signing_salt: "9SvgL6qu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
