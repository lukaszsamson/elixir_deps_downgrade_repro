defmodule DepsDowngrade.MixProject do
  use Mix.Project

  def project do
    [
      app: :deps_downgrade,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:mock, "~> 0.3", only: :test},
      {:recon, "~> 2.3"},
      {:phoenix, "~> 1.5.0"},
      {:phoenix_pubsub, "~> 2.0"},
      {:phoenix_html, "~> 2.10"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:plug, "~> 1.7"},
      {:plug_cowboy, "~> 2.0"},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:gradualixir,
       github: "overminddl1/gradualixir", ref: "master", only: [:dev], runtime: false}
    ]
  end
end
