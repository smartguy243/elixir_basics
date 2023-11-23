defmodule AnonymousTest do
  use ExUnit.Case
  doctest Anonymous

  describe "get_equipment_list/0" do
    test "returns a list of equipment" do
      assert Anonymous.get_equipment_list() == [:space_helmet, :space_suite, :snacks, :grappling_hook, :probe]
    end
  end

  describe "item_details/1" do
    test "returns the item's details" do
      assert Anonymous.item_details(:space_helmet) == {3, :kg, 1}
      assert Anonymous.item_details(:space_suite) == {16, :kg, 1}
      assert Anonymous.item_details(:snacks) == {1, :kg, 16}
      assert Anonymous.item_details(:grappling_hook) == {4, :kg, 1}
      assert Anonymous.item_details(:probe) == {2, :lb, 1}
    end
  end

  describe "get_first_item/1" do
    test "Get the head of a list" do
      assert Anonymous.get_first_item([:space_helmet, :space_suite, :snacks, :grappling_hook, :probe]) == :space_helmet
      assert Anonymous.get_first_item([:snacks, :grappling_hook, :probe]) == :snacks
    end
  end

  describe "atom_to_string/1" do
    test "Convert a list of atom to a list of string upcasing it and changing '_' to ' '" do
      assert Anonymous.atom_to_string([:space_helmet, :space_suite, :snacks, :grappling_hook, :probe]) == ["SPACE HELMET", "SPACE SUITE", "SNACKS", "GRAPPLING HOOK", "PROBE"]
      assert Anonymous.atom_to_string([:snacks, :grappling_hook, :probe]) == ["SNACKS", "GRAPPLING HOOK", "PROBE"]
    end
  end

  describe "get_weight_lbs/1" do
  test "Get the weight of equipment in kg and convert it into lbs" do
    assert Anonymous.get_weight_lbs([:space_helmet, :space_suite, :snacks, :grappling_hook, :probe]) == [6.6000000000000005, 35.2, 2.2, 8.8, 2]
  end
end
end
