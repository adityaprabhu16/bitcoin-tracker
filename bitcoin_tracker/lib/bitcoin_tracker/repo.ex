defmodule BitcoinTracker.Repo do
  use Ecto.Repo,
    otp_app: :bitcoin_tracker,
    adapter: Ecto.Adapters.Postgres
end
