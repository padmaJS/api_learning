defmodule ApiLearning.Guardian do
  use Guardian, otp_app: :api_learning
  alias ApiLearning.Accounts

  def subject_for_token(resource, _claims) do
    IO.inspect(resource)
    {:ok, to_string(resource.id)}
  end

  def resource_from_claims(claims) do
    IO.inspect(claims)
    id = claims["sub"]
    resource = Accounts.get_user!(id)
    {:ok, resource}
  end
end
