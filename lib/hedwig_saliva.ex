defmodule HedwigSaliva do
  use Application

  def start(_, _) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(HedwigSaliva.ConnectionSupervisor, [])
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
