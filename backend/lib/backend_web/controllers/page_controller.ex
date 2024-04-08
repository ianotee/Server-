defmodule BackendWeb.PageController do
  use BackendWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do

    render(conn, :users, layout: false)
  end

  def posts(conn, _params) do

    users =[
      %{id: 1, name: "Ian Otee", email: "oteeian500@gmail.com"},
      %{id: 2, name: "John Otee", email: "johnotee@gmail.com"},
    ]

    render(conn, :posts, users: users, layout: false)

  end
end
