defmodule Superdyn do
  def launch_instances(number \\ 10) do
    Enum.each(1..number, fn n ->
      DynamicSupervisor.start_child(
        Superdyn.DynamicSupervisor,
        {Superdyn.Task, "Task number #{n}"}
      )
      # |> IO.inspect(label: "Inspecting...")
      |> check_number_of_tasks(n)
    end)
  end

  def check_number_of_tasks(_process, n) do
    if n < 5 do
      IO.puts("Everything ok until now... Only #{n} tasks")
    else
      IO.puts("Ohh Ohh, more than 5 tasks. It's been #{n} tasks from now")
    end
  end
end
