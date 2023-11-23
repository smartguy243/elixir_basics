defmodule ControlFlow do

  def check_max_load(load) do
    if load < 55, do: "Safe to fly!", else: "Too heavy to fly!"
    unless load < 55, do: "Too heavy too fly!", else: "Safe to fly!"
  end

  def check_fuel_level(percentage) do
    cond do
      percentage == 100 -> "full tank"
      percentage > 75 -> "3/4 tank"
      percentage > 49 -> "1/2 fuel"
      percentage > 24 -> "1/4 tank"
      true -> "empty tank"
    end
  end

  def error_code_check(value) do
    case value do
      200 -> :ok
      201 -> :created
      204 -> :no_content
      n when is_integer(n) and n > 299 -> :error
      _ -> :unknown
    end
  end

  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2
  
  def equipment_check(equipment_tuple) do
    case equipment_tuple do
      {weight, unit_type, quantity} when weight / quantity < 16 and unit_type == :kg -> :equipment_cleared
      {weight, unit_type, quantity} when unit_type == :lb ->
        if convert_kg_to_lb(weight) / quantity < 16, do: :equipment_cleared, else: :failed
      _ -> :unknown
    end
  end
end
