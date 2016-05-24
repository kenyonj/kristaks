defmodule Kristaks.SiteCopy do
  use Kristaks.Web, :model

  schema "site_copies" do
    field :title, :string
    field :body, :string

    timestamps
  end

  def changeset(model \\ %__MODULE__{}, params) do
    model
    |> cast(params, ~w(title body), [])
    |> update_change(:title, &String.downcase/1)
    |> update_change(:title, &String.replace(&1, " ", "_"))
    |> unique_constraint(:title)
  end
end
