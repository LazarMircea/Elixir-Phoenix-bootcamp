# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/xMCXE8pikDZqUX0xUzmkw0JPIbKNYwVoTf3FyCBihHQfwU6QSXXkgokjgwycaku",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"


config :ueberauth, Ueberauth,
  providers: [
    github: { Ueberauth.Strategy.Github, [default_scope: "user:email, public_repo"]},
    facebook: { Ueberauth.Strategy.Facebook, []}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "cbf0963fe6fc275f8f62",  #your client_id from https://github.com/settings/developers -> New OAuth App
  client_secret: "a0d8ff02f771540e1d53be57c924aeaaeaa7bcac" #and also your client_secret

config :ueberauth, Ueberauth.Strategy.Facebook.OAuth,
  client_id: "263170990921183", #your client_id from https://developers.facebook.com/ ->Add new app
  client_secret: "d5bcba9c9c47e5fa535b48a5d4d7c797" #and also your secret_key
