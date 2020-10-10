defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      assert FizzBuzz.build("numbers.txt") == {:ok, [1, 2, :buzz, :buzz, :buzz]}
    end

    test "when an invalid file is provided, returns an error" do
      assert FizzBuzz.build("invalid.txt") == "File reading error. Reason: enoent"
    end
  end
end
