defmodule BinariesTest do
  use ExUnit.Case
  doctest Binaries

  test "greets the world" do
    assert Binaries.hello() == :world
  end
end
