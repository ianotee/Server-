defmodule BackendWeb.UserJSON do
  alias Backend.Accounts.User
  alias Backend.Blog.Post
  alias BackendWeb.PostJSON

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  #defp data(%User{} = user) do
  #  %{
  #    id: user.id,
  #    name: user.name,
   #   email: user.email
    #}
 # end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email


    }
  end


end
