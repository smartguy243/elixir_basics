defmodule BitstringsTest do
  use ExUnit.Case
  doctest Bitstrings

  describe "encode/2" do
    test "Encodes instructions in binary" do
      assert Bitstrings.encode('FEHTOFB') == <<20, 8, 49, 2::size(4)>>
      assert Bitstrings.encode('FBTOH') == <<18, 137, 0::size(4)>>

    end
  end

  describe "decode/2" do
    test "Decodes instructions in binary" do
      assert Bitstrings.decode(<<20, 8, 49, 2::size(4)>>) == "FEHTOFB"
      assert Bitstrings.decode(<<18, 137, 0::size(4)>>) == "FBTOH"
    end
  end
end
