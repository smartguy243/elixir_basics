defmodule ControlFlowTest do
  use ExUnit.Case
  doctest ControlFlow

  describe "check_max_load/1" do
    test "returns a string that cheks the load" do
      assert ControlFlowTest.check_max_load(53) == "Safe to fly!"
      assert ControlFlowTest.check_max_load(56) == "Too heavy to fly!"
    end
  end

  describe "check_fuel_level/1" do
    test "returns the level of the tank" do
      assert ControlFlowTest.check_fuel_level(100) == "full tank"
      assert ControlFlowTest.check_fuel_level(77) == "3/4 tank"
      assert ControlFlowTest.check_fuel_level(60) == "1/2 fuel"
      assert ControlFlowTest.check_fuel_level(35) == "1/4 tank"
      assert ControlFlowTest.check_fuel_level(10) == "empty tank"
    end
  end

  describe "error_code_check/1" do
    test "returns an atom" do
      assert ControlFlowTest.error_code_check(200) == :ok
      assert ControlFlowTest.error_code_check(201) == :created
      assert ControlFlowTest.error_code_check(204) == :no_content
      assert ControlFlowTest.error_code_check(300) == :error
      assert ControlFlowTest.error_code_check(_) == :unknown
    end
  end

  describe "convert_kg_to_lb/1" do
    test "convert a value in kg to a value in lb" do
      assert ControlFlow.convert_kg_to_lb(10) == 22.0
    end
  end

  describe "equipment_check/3" do
    test "returns the state of equipment" do
      assert ControlFlow.equipment_check({15, :kg, 1}) == :equipment_cleared
      assert ControlFlow.equipment_check({4, :lb, 1}) == :equipment_cleared
      assert ControlFlow.equipment_check({10, :lb, 1}) == :failed
      assert ControlFlow.equipment_check(10) == :unknown
    end
  end
end
