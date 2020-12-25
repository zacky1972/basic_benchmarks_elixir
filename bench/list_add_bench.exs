defmodule ListAddBench do
  use Benchfella

  @list Enum.to_list(1..1_000_000)

  bench "add head" do
    [:a | @list]
  end

  bench "add tail" do
    @list ++ [:a]
  end

  bench "add long list" do
  	@list ++ @list
  end
end
