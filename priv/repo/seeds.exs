# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:

days = ~w(sunday monday tuesday wednesday thursday friday saturday)

for day <- days do
  Kristaks.Hour.changeset(%{
    day: day,
    opens_at: %{"hour" => "12", "min" => "0"},
    closes_at: %{"hour" => "21", "min" => "0"}
  })
  |> Kristaks.Repo.insert!
end
