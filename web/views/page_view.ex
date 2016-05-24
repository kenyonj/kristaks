defmodule Kristaks.PageView do
  use Kristaks.Web, :view

  def in_season? do
    true
  end

  def open?(hours) do
    true
  end

  def admin?(user) do
    false
    # user.admin
  end

  def pretty_time(ecto_time) do
    Calendar.Strftime.strftime!(ecto_time, "%l %p")
  end
end
