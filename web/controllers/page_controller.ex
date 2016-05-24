defmodule Kristaks.PageController do
  use Kristaks.Web, :controller

  alias Kristaks.{Hour, SiteCopy}

  def index(conn, _params) do
    hours = Repo.all(Hour)
    render conn, "index.html", hours: hours, hours_header: hours_header
  end

  defp hours_header do
    case Repo.get_by(SiteCopy, title: "hours_header") do
      nil -> ""
      hours_header -> hours_header.body
    end
  end
end
