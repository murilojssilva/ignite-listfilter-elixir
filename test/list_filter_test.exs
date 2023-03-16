defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "empty list" do
    list = []

    result = ListFilter.call(list)
    expected = 0

    assert result == expected
  end

  test "list with only even numbers" do
    list = ["12", "4", "6", "10", "6"]

    result = ListFilter.call(list)
    expected = 0

    assert result == expected
  end

  test "list with strings and odd/even numbers" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    result = ListFilter.call(list)
    expected = 3

    assert result == expected
  end
end
