defmodule ApiLearning.Repo do
  use Ecto.Repo,
    otp_app: :api_learning,
    adapter: Ecto.Adapters.Postgres
end
