# BitcoinTracker

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

General Flow:
 - Add your routes in router.ex
 - Write your LiveView files within Elixier modules
 - View the HTML rendered at the appropriate route.

Commands:
 - Start Phoenix Server: mix phx.server
 - Stop Phoenix Server: mix phx.server stop
 - 

Things to do:
 - Fetch live Bitcoin prices using an API like CoinGecko
 - Use handle_info/2 to update the price dynamically
 - Style it using Tailwind CSS