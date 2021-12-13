defmodule ProteopathyDb.Repo do
  use Ecto.Repo,
    otp_app: :proteopathy_db,
    adapter: Ecto.Adapters.Postgres
end
