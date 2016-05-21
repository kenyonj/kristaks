defmodule Kristaks.PageController do
  use Kristaks.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
