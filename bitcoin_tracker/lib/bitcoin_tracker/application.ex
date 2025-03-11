defmodule BitcoinTracker.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      BitcoinTrackerWeb.Telemetry,
      BitcoinTracker.Repo,
      {DNSCluster, query: Application.get_env(:bitcoin_tracker, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: BitcoinTracker.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: BitcoinTracker.Finch},
      # Start a worker by calling: BitcoinTracker.Worker.start_link(arg)
      # {BitcoinTracker.Worker, arg},
      # Start to serve requests, typically the last entry
      BitcoinTrackerWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BitcoinTracker.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BitcoinTrackerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
