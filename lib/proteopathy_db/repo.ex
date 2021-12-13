defmodule ProteopathyDb.Repo do
  use Ecto.Repo,
    otp_app: :proteopathy_db,
    adapter: Ecto.Adapters.SQLite3
end
