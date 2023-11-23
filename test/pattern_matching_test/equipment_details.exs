defmodule EquipmentDetails do
  use ExUnit.Case
  doctest PatternMatching

  describe "get_equipment_list/0" do
    test "returns a list of equipments" do
      assert EquipmentDetails.get_equipment_list() == [:space_helmet, :space_suit, :snacks, :grapling_hook, :probe]
    end
  end

  describe "item_details/1" do
    test "returns a tuple" do
      assert EquipmentDetails.item_details(:space_helmet) == {3, :kg, 1}
    end
  end

  describe "item_details/1" do
    test "returns a tuple" do
      assert EquipmentDetails.item_details(:space_suit) == {16, :kg, 1}
    end
  end

  describe "item_details/1" do
    test "returns a tuple" do
      assert EquipmentDetails.item_details(:snacks) == {1, :kg, 16}
    end
  end

  describe "item_details/1" do
    test "returns a tuple" do
      assert EquipmentDetails.item_details(:grapling_hook) == {4, :kg, 1}
    end
  end

  describe "item_details/1" do
    test "returns a tuple" do
      assert EquipmentDetails.item_details(:probe) == {2, :kg, 1}
    end
  end

  describe "item_details/1" do
    test "throw an exception" do
      assert EquipmentDetails.item_details(_other) == "unknown item"
    end
  end
end
