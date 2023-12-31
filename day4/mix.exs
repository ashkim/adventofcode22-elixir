defmodule Day4.MixProject do
  use Mix.Project

  def project do
    [
      app: :day4,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_task: "test"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:mix_test_watch, "~> 1.1", only: [:dev], runtime: false }
    ]
  end

  defp aliases do
    [
      "test.watch": ["test.watch"]
    ]
  end
end
