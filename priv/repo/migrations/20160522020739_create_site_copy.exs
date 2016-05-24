defmodule Kristaks.Repo.Migrations.CreateSiteCopy do
  use Ecto.Migration

  def change do
    create table(:site_copies) do
      add :title, :string
      add :body, :string

      timestamps
    end

  end
end
