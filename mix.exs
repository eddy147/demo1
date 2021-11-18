defmodule Demo1.MixProject do
  use Mix.Project

  def project do
    [
      app: :demo1,
      version: "0.0.1",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :logger_file_backend],
      mod: {Demo1, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:logger_file_backend, "~> 0.0.10"}
    ]
  end

  defp releases do
    [
      demo1: [
        include_executables_for: [:unix]
      ]
    ]
  end
end
