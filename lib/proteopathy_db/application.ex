defmodule ProteopathyDb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ProteopathyDb.Repo,
      # Start the Telemetry supervisor
      ProteopathyDbWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ProteopathyDb.PubSub},
      # Start the Endpoint (http/https)
      ProteopathyDbWeb.Endpoint
      # Start a worker by calling: ProteopathyDb.Worker.start_link(arg)
      # {ProteopathyDb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ProteopathyDb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ProteopathyDbWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
