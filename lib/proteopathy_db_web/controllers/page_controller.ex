defmodule ProteopathyDbWeb.PageController do
  use ProteopathyDbWeb, :controller

  alias ProteopathyDb.Proteopathy.Protien
  alias ProteopathyDb.Repo

  def index(conn, _params) do
    proteins = Repo.all(Protien)
    render(conn, "index.html", proteins: proteins)
  end
end
