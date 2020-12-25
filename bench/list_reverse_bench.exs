defmodule ListReverseBench do
  use Benchfella

  @list Enum.to_list(1..1_000_000)

  bench "reverse" do
    Enum.reverse(@list)
  end
end
