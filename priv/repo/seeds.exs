# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     ApiLearning.Repo.insert!(%ApiLearning.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias ApiLearning.{Repo, Accounts.User}

email = "apitest@example.com"
password = "1234567"

Repo.insert!(%User{email: email, password: password})
