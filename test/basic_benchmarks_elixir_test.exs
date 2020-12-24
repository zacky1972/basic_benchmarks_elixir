defmodule BasicBenchmarksElixirTest do
  use ExUnit.Case
  doctest BasicBenchmarksElixir

  test "greets the world" do
    assert BasicBenchmarksElixir.hello() == :world
  end
end
