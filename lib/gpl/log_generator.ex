defmodule Demo1.LogGenerator do
  use Task
  require Logger

  def start_link(_args) do
    Task.start_link(fn -> Demo1.LogGenerator.generate() end)
  end

  def generate() do
    IO.puts("Start generating logs...")
    Enum.each(1 .. 5, fn _x ->
      emergency()
      alert()
      critical()
      error()
      warning()
      notice()
      info()
      :timer.sleep(3_000)
      end)
      IO.puts("Done generating. See /var/log/demo.error.log for logs.")
  end

  def emergency() do
    Task.async(fn -> Logger.emergency("Emergency!", error_code: :emergency) end)
  end

  def alert() do
    Task.async(fn -> Logger.alert("Alert!", error_code: :alert) end)
  end

  def critical() do
    Task.async(fn -> Logger.critical("Critical!", error_code: :critical) end)
  end

  def error() do
    Task.async(fn -> Logger.error("Error!", error_code: :error) end)
  end

  def warning() do
    Task.async(fn -> Logger.warning("Warning!", error_code: :warning) end)
  end

  def notice() do
    Task.async(fn -> Logger.notice("Notice", error_code: :notice) end)
  end

  def info() do
    Task.async(fn -> Logger.info("Info", error_code: :info) end)
  end
end
