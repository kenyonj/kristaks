defmodule Kristaks.SiteCopyTest do
  use Kristaks.ModelCase

  alias Kristaks.SiteCopy

  @valid_attrs %{body: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = SiteCopy.changeset(%SiteCopy{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = SiteCopy.changeset(%SiteCopy{}, @invalid_attrs)
    refute changeset.valid?
  end
end
