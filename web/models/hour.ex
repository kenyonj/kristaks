defmodule Kristaks.Hour do
  use Kristaks.Web, :model

  schema "hours" do
    field :day, :string
    field :opens_at, Ecto.Time
    field :closes_at, Ecto.Time
    field :open, :boolean, default: false

    timestamps
  end

  def changeset(model \\ %__MODULE__{}, params) do
    model
    |> cast(params, ~w(day opens_at closes_at), ~w(open))
    |> update_change(:day, &String.downcase/1)
    |> update_change(:day, &String.capitalize/1)
    |> unique_constraint(:day)
  end
end
