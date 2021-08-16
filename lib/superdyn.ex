defmodule Superdyn do
  def launch_instances(number \\ 10) do
    Enum.each(1..number, fn n ->
      DynamicSupervisor.start_child(
        Superdyn.DynamicSupervisor,
        {Superdyn.Task, "Task number #{n}"}
      )
    end)
  end
end
