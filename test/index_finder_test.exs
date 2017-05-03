defmodule IndexFinderTest do
  use ExUnit.Case
  doctest IndexFinder

  @test_data_with_unique_item [
    {["A"], {"A", 0}},
    {["A", "B", "C", "A", "C"], {"B", 1}},
    {["A", "A", "B", "B", "C"], {"C", 4}},
    {["A", "B", "A", "C", "A"], {"B", 1}},
    {["A", "B", "B", "B"], {"A", 0}},
    {["B", "B", "B", "A"], {"A", 3}}
  ]

  @test_data_without_unique_item ["A", "B", "C", "C", "B", "A"]

  test "Finds the first unique item in a list" do
    for {input, output} <- @test_data_with_unique_item do
      assert IndexFinder.find_index(input) == output
    end
  end

  test "Returns nil if the list is empty" do
     assert IndexFinder.find_index([]) == nil
  end

  test "Returns nil if no item is unique" do
    assert IndexFinder.find_index(@test_data_without_unique_item) == nil
  end
end
