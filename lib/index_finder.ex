defmodule IndexFinder do
  def find_index(items) when is_list(items) do
    items
    |> Enum.with_index()
    |> Enum.group_by(fn ({value, index}) -> value end)
    |> Map.values()
    |> Enum.reduce(%{}, fn item -> Enum.into %{List.first(item) => 1} end)
    |> IO.inspect
  end

  def start(_type, _args) do
    data = [2, 3, 4, 2, 1, 6, 1, 4, 1]
    find_index(data)
    {:ok, self()}
  end
end
