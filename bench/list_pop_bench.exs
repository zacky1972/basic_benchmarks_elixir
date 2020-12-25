defmodule ListPopBench do
  use Benchfella

  @list Enum.to_list(1..1_000_000)

  bench "pop head" do
    fn [_head | tail] -> tail end.(@list)
  end

  bench "pop tail" do
    List.delete_at(@list, -1)
  end
end
