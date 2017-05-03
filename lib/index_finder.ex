defmodule IndexFinder do
  def extract(items) do
    IO.puts String.duplicate("-", 100)
    items
    |> IO.inspect

  end


  def find_index(items) when is_list(items) do
    buckets = %{}


    items
    |> Enum.with_index()
    |> Enum.group_by(&elem(&1, 0))
    |> Enum.unzip()
    |> elem(1)
    |> Enum.filter(&Enum.count(&1) == 1)
    |> Enum.map(&List.first(&1))
    |> Enum.sort(fn (a, b) -> elem(a, 1) <= elem(b, 1) end)
    |> List.first()














  end

  def start(_type, _args) do
    data = ["B", "C", "H", "D", "G", "B", "A", "C", "F", "A", "D", "A"]
    find_index(data) |> IO.inspect
    {:ok, self()}
  end
end
