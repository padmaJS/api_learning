defmodule ApiLearning.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ApiLearning.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        password: "some password"
      })
      |> ApiLearning.Accounts.create_user()

    user
  end
end
