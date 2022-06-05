defmodule ApiLearning.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ApiLearning.Repo,
      # Start the Telemetry supervisor
      ApiLearningWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ApiLearning.PubSub},
      # Start the Endpoint (http/https)
      ApiLearningWeb.Endpoint
      # Start a worker by calling: ApiLearning.Worker.start_link(arg)
      # {ApiLearning.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApiLearning.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ApiLearningWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
