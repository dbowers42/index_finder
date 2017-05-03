# IndexFinder
This repository is an exercise in creating a function that allows you to
determine the first unique item in a list.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `index_finder` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:index_finder, "~> 0.1.0"}]
end
```

## Running
simply running ```mix``` will run some hard coded examples

## Running Interactively

run ```iex -S mix```

then you can try the following

```elixir
iex> IndexFinder.find_index(["A", "B", "C", "A", "C"])
{"B", 1}

iex> IndexFinder.find_index([])
nil

iex> IndexFinder.find_index(["A", "A", "A"])
nil
```

## Testing
```
mix test
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/index_finder](https://hexdocs.pm/index_finder).
