defmodule AllStrings do
  @moduledoc """
  Documentation for `AllStrings`.
  """
  def first_letter(value) do
    String.trim(value)
    |> String.first()
  end

  def initial(value) do
    "#{first_letter(value) |> String.capitalize()}. "
  end

  def initials(full_name) do
    list = String.split(full_name)

    Enum.map(list, fn name ->
      initial(name)
    end)
    |> List.to_string()
    |>String.trim()
  end

  def display_saucer() do
    IO.puts(build_saucer())
  end

  defp build_saucer() do
    """

                        %%%%%%%%%%%%%%%%%%%%
                   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
          ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    ************************************************************
        ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
           ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,
                ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

    """
  end

  def display_customized_spacecraft(full_name) do
    IO.puts(customized_spacecraft(full_name))
  end

  def customized_spacecraft(full_name) do
    spacecraft_label = "******************** #{initials(full_name)}'s  SPACECRAFT *******************"
    "#{build_saucer()}"
    |> String.replace("************************************************************", spacecraft_label)
  end
end
