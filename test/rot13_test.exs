defmodule Rot13Test do
  use ExUnit.Case
  doctest Rot13

  describe "encode" do
    test "rotates lowercase letters correctly" do
      assert Rot13.encode("hi") == {:ok, "uv"}
    end

    test "rotates uppercase letters correctly" do
      assert Rot13.encode("HI") == {:ok, "UV"}
    end

    test "rotates uppercase and lowercase letters in the same string" do
      assert Rot13.encode("Hi") == {:ok, "Uv"}
    end

    test "ignores punctuation" do
      assert Rot13.encode("Hi! Hey. Hello?") == {:ok, "Uv! Url. Uryyb?"}
    end

    test "ignores numbers" do
      assert Rot13.encode("rot13") == {:ok, "ebg13"}
    end

    test "ignores whitespace" do
      assert Rot13.encode("\n ") == {:ok, "\n "}
    end

    test "ignores empty strings" do
      assert Rot13.encode("") == {:ok, ""}
    end
  end

  describe "decode" do
    test "is super useful" do
      assert Rot13.decode("Uv! Url. Uryyb?") == {:ok, "Hi! Hey. Hello?"}
    end
  end
end
