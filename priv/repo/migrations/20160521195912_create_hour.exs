defmodule Kristaks.Repo.Migrations.CreateHour do
  use Ecto.Migration

  def change do
    create table(:hours) do
      add :day, :string
      add :opens_at, :time
      add :closes_at, :time
      add :open, :boolean

      timestamps
    end

  end
end
