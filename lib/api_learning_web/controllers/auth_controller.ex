defmodule ApiLearningWeb.AuthController do
  use ApiLearningWeb, :controller

  alias ApiLearning.Accounts

  def login(conn, %{"email" => email, "password" => password} = _params) do
    case Accounts.token_login(email, password) do
      {:ok, jwt, _claims} ->
        conn
        |> render("token.json", jwt: jwt)

      _ ->
        conn
        |> put_status(:unauthorized)
    end
  end
end
