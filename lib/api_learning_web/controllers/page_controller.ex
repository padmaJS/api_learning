defmodule ApiLearningWeb.PageController do
  use ApiLearningWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
