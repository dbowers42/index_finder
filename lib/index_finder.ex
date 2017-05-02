defmodule IndexFinder do
  def extract(items) do
      IO.inspect items
      IO.puts String.duplicate("-", 100)
    items
    |> Enum.map(fn t -> {elem(t, 1)} end)

  end


  def find_index(items) when is_list(items) do
    items
    |> Enum.with_index()
    |> Enum.group_by(&elem(&1, 0))
    |> Map.values()
    |> Enum.map(&extract/1)





  end

  def start(_type, _args) do
    data = ["B", "C", "D", "B", "A", "F", "A", "D", "A"]
    find_index(data) |> IO.inspect
    {:ok, self()}
  end
end
