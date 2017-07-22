defmodule HelloPhoenixElixir.PageController do
  use HelloPhoenixElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
