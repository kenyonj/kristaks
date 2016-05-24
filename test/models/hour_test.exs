defmodule Kristaks.HourTest do
  use Kristaks.ModelCase

  alias Kristaks.Hour

  @valid_attrs %{closes_at: "14:00:00", day: "some content", opens_at: "14:00:00"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Hour.changeset(%Hour{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Hour.changeset(%Hour{}, @invalid_attrs)
    refute changeset.valid?
  end
end
