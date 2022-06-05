defmodule ApiLearning.Guardian.AuthPipeline do
  use Guardian.Plug.Pipeline, otp_app: :api_learning, module: ApiLearning.Guardian, error_handler: ApiLearning.AuthErrorHandler

  plug Guardian.Plug.VerifyHeader
  plug Guardian.Plug.EnsureAuthenticated
end
