defmodule Day4Test do
  use ExUnit.Case
  doctest Day4

  @example_text "2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8"

  test "solve" do
    assert Day4.solve(@example_text) == 2
  end

  test "solve_line" do
    assert false == Day4.solve_line("2-4,6-8")
    assert false == Day4.solve_line("2-4,4-8")
  end

  test "parse_line" do
    assert [1..4, 5..11] == Day4.parse_line("1-4,5-11")
  end

  test "parse_range" do
    assert 1..4 == Day4.parse_range("1-4")
  end

  test "is_subrange" do
    assert true == Day4.is_subset?(2..3,1..5)
    assert false == Day4.is_subset?(1..3,2..5)
    assert true == Day4.is_subset?(2..3,1..5)
  end
 end
