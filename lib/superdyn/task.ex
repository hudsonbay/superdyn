defmodule Superdyn.Task do
  use Task, restart: :permanent

  def start_link(arg) do
    Task.start_link(__MODULE__, :initialize, [arg])
  end

  def initialize(arg) do
    IO.puts("Process initiated with arg #{arg}")
    IO.inspect(self())

    # 1 minute
    Process.sleep(60 * 1000)
  end
end
