defmodule GuardsTest do
  use ExUnit.Case
  doctest Guards

  describe "type/1" do
    test "returns the type of the value or not_number if value is not a number" do
      assert GuardsTest.type(8) == :integer
      assert GuardsTest.type(9.2) == :float
      assert GuardsTest.type("me") == :not_number
      assert GuardsTest.type(:kaay) == :not_number
    end
  end

  describe "is_single_digit/1" do
    test "returns true if the value is a single digit number and false when it isn't" do
      assert GuardsTest.is_single_digit(9) == true
      assert GuardsTest.is_single_digit(10) == false
    end
  end

  describe "return_even_numbers/1" do
    test "returns the value when it's an even and returns :not_even when it isn't or empty" do
      assert GuardsTest.return_even_numbers(5) == :not_even
      assert GuardsTest.return_even_numbers(8) == 8
      assert GuardsTest.return_even_numbers() == :not_even
    end
  end
end
