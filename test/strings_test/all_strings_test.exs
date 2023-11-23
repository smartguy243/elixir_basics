defmodule AllStringsTest do
  use ExUnit.Case
  doctest AllStrings

  describe "initial/1" do
    test "returns capitalized first letter with period followed by a space" do
      assert AllStrings.initial("eraste") == "E. "
      assert AllStrings.initial("eraste kaay") == "B. "
    end
  end

  describe "initials/1" do
    test "returns initials with periods between" do
      assert AllStrings.initials("eraste kaay") == "E. K."
      assert AllStrings.initials("eraste kadiayi mukeba") == "E. K. M."
    end
  end

  describe "build_saucer/0" do
    test "returns saucer string"
      assert AllStrings.build_saucer() == "\n                    %%%%%%%%%%%%%%%%%%%%\n               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n************************************************************\n    ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n       ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,\n            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n\n"
    end
  end

  describe "customized_spacecraft/1" do
    test "returns saucer string" do
      assert AllStrings.customized_spacecraft("eraste kaay") ==      "\n                    %%%%%%%%%%%%%%%%%%%%\n               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n******************** E. K.'s  SPACECRAFT *******************\n    ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n       ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,\n            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n\n"
      assert AllStrings.customized_spacecraft("eraste kadiayi mukeba") ==      "\n                    %%%%%%%%%%%%%%%%%%%%\n               %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n      ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n******************** E. K. M.'s  SPACECRAFT *******************\n    ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n       ,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,,,,&&&,,,\n            ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,\n\n"
    end
  end

  describe "display_saucer/0" do
    test "returns atom" do
      assert AllStrings.display_saucer() == :ok
    end
  end

  describe "display_custom_spacecraft/1" do
    test "returns atom"
      assert AllStrings.display_custom_spacecraft("eraste kaay") == :ok
    end
  end
end
