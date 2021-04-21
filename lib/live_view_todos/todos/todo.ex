defmodule LiveViewTodos.Todos.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todos" do

    @type checkbox() :: boolean()
    field :done, :boolean, default: false

    @type word() :: String.t()
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:title, :done])
    |> validate_required([:title, :done])
  end

end
