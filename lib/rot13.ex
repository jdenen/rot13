defmodule Rot13 do
  @moduledoc """
  Rot13 performs a [Caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher), shifting 13 places up the English alphabet.
  """

  @doc """
  Returns an encoded string, ignoring numbers and punctuation.

  ## Examples

      iex> Rot13.encode("Execute Order 66!")
      "Rkrphgr Beqre 66!"

  """
  def encode(<<char>> <> text) do
    <<rotate(char)>> <> encode(text)
  end

  def encode(_), do: ""

  @doc """
  This is a (poor) attempt at humor.

  ## Examples

      iex> Rot13.decode("Execute Order 66!")
      "Rkrphgr Beqre 66!"

  """
  defdelegate decode(text), to: __MODULE__, as: :encode

  defp rotate(char) when char in ?a..?z do
    rem(char - ?a + 13, 26) + ?a
  end

  defp rotate(char) when char in ?A..?Z do
    rem(char - ?A + 13, 26) + ?A
  end

  defp rotate(char), do: char
end
