defmodule WeatherNet.Repo do
  use Ecto.Repo,
    otp_app: :weather_net,
    adapter: Ecto.Adapters.Postgres
end
