use Mix.Config

config :logger,
  backends: [
    {LoggerFileBackend, :demo_error}
  ]

  config :logger, :demo_error,
  path: "/home/eddy/demo1.log",
  level: :debug,
  format: "$date $time $level $message $metadata\n",
  metadata: :all
