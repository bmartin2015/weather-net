defmodule WeatherNetWeb.PageController do
  use WeatherNetWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
