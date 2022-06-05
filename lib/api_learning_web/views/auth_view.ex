defmodule ApiLearningWeb.AuthView do
  use ApiLearningWeb, :view

  def render("token.json", %{jwt: token}) do
    %{jwt: token}
  end
end
