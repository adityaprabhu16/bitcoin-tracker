defmodule BitcoinTrackerWeb.PriceTrackerLive do
  use BitcoinTrackerWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>
       <h1>Bitcoin Price Tracker</h1>
       <p>Current Price: <%= @price %></p>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, price: "$0.00")}
  end
end
