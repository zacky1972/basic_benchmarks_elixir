defmodule EnumBench do
  use Benchfella

  @list Enum.to_list(1..1_000_000)

  bench "Enum.map" do
    Enum.map(@list, & &1 * 2)
  end

  bench "recursive" do
    BasicBenchmarksElixir.r_map(@list, & &1 * 2)
  end
end
