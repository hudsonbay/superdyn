# Superdyn

## Description
Small project to test dynamic supervisors in Elixir OTP

## How to interact with this project

Create a process to supervise:
`{:ok, agent} = DynamicSupervisor.start_child(Superdyn.DynamicSupervisor, {Agent, fn -> %{} end})`

`Agent.update(agent, fn state -> Map.put(state, :name, "manu") end)`

If you want to spawn 100 processes:
`Superdyn.launch_instances(10)`

See how many processes are being supervised by your Dynamic Supervisor:
`DynamicSupervisor.count_children(Superdyn.DynamicSupervisor)`

If you want to kill all the supervision three:
`DynamicSupervisor.stop(Superdyn.DynamicSupervisor)`

There's a little message for the case when you send more than 5 tasks which are supervised



