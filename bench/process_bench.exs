defmodule ProcessBench do
  use Benchfella

  bench "echo" do
  	spawn(BasicBenchmarksElixir, :echo, [self()])

  	receive do
  	  :ok -> :ok
  	after 1000 ->
  	  raise("Timeout")
  	end
  end

  bench "send list" do
  	spawn(BasicBenchmarksElixir, :send_list, [self()])

  	receive do
  	  list -> if is_list(list) do
  	    :ok
  	  else
  	    raise("Bad data")
  	  end
  	after 1000 ->
  	  raise("Timeout")
  	end
  end
end
