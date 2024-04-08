defmodule BackendWeb.PostJSON do
  alias Backend.Blog.Post

  @doc """
  Renders a list of posts.
  """
  def index(%{posts: posts}) do
    %{data: for(post <- posts, do: data(post))}
  end

  @doc """
  Renders a single post.
  """
  def show(%{post: post}) do
    %{data: data(post)}
  end
  def data(%Post{} = post) do
    %{
      id: post.id,
      body: post.body,
      title: post.title,


    }
  end


end
