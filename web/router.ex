defmodule Kristaks.Router do
  use Kristaks.Web, :router
  use ExAdmin.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Kristaks do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/admin", ExAdmin do
    pipe_through :browser
    admin_routes
  end
end
