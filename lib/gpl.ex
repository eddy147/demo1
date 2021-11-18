defmodule Demo1 do
  use Application
  require Logger

  def start(_type, _args) do
    Logger.debug("Starting the application...")
    Demo1.Supervisor.start_link()
  end
end
