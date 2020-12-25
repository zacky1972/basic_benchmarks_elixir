defmodule BasicBenchmarksElixir do
  @moduledoc """
  Documentation for `BasicBenchmarksElixir`.
  """

  @list Enum.to_list(1..10000)

  @doc """
  Hello world.

  ## Examples

      iex> BasicBenchmarksElixir.hello()
      :world

  """
  def hello do
    :world
  end

  def r_map([], _func), do: []
  def r_map([head | tail], func) do
    [func.(head) | r_map(tail, func)]
  end  

  def echo(pid) do
    send(pid, :ok)
  end

  def send_list(pid) do
    send(pid, @list)
  end
end
