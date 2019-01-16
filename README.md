# Rot13

A simple library to do [rot13](https://en.wikipedia.org/wiki/ROT13) encoding.

## Usage

`encode/1` returns an `:ok` tuple. The second element is your encoded string. If the argument can't be
encoded, it returns `{:error, "Value cannot be encoded"}`.

`encode!/1` returns your encoded string. If its argument can't be encoded, it raises an `ArgumentError`.

Surely, every cipher must be decoded at some point. So this library also makes a `decode/1` function available.
It is SUPER useful.

## Installation

The package can be installed by adding `rot13` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:rot13, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). The docs can
be found at [https://hexdocs.pm/rot13](https://hexdocs.pm/rot13).
