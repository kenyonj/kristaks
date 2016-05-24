defmodule Kristaks.Repo do
  use Ecto.Repo, otp_app: :kristaks
  use Scrivener, page_size: 10
end
