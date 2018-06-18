use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :discuss, Discuss.Endpoint,
  secret_key_base: "lgUC+Tsj+FaZwK+F//lLsBLikp9XlHd9X3eN0jc9EqPlPOjUn6MkEi6ETAJs391D"

# Configure your database
config :discuss, Discuss.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "discuss_prod",
  pool_size: 15
