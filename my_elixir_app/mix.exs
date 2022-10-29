defmodule MyElixirApp.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_elixir_app,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {MyElixirApp.Application, []}
    ]
  end

  defp deps do
    [
      # just need one dependency to test `mix deps.get`
      {:decimal, "~> 2.0"}
    ]
  end
end
