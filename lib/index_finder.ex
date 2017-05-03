defmodule IndexFinder do


  @moduledoc """
    This module is an exercise in creating a function that allows you to
    determine the first unique item in a list.
  """
  @data [
    ["A"],
    ["A", "B", "C", "A", "C"],
    ["A", "A", "B", "B", "C"],
    ["A", "B", "A", "C", "A"],
    ["A", "B", "B", "B"],
    ["B", "B", "B", "A"],
    ["A", "A", "A"],
    ["A", "B", "C", "A", "C"],
    []
  ]

  @doc """
    This functions takes a list of items and determines the first unique item in
    the array. If an item is found a 2 item tuple containing the unique item and
    its index is returned. Returns nil If no item is found or the list is empty.

    iex> IndexFinder.find_index(["A", "B", "C", "A", "C"])
    {"B", 1}

    iex> IndexFinder.find_index([])
    nil

    iex> IndexFinder.find_index(["A", "A", "A"])
    nil
  """
  def find_index(items) when is_list(items) do
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
    for example <- @data do
      IO.puts String.duplicate("-", 100)
      IO.inspect example
      IO.inspect find_index(example)
    end

    {:ok, self()}
  end
end
