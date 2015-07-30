defmodule Extreme.Mixfile do
  use Mix.Project

  def project do
    [app: :extreme,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [
      applications: [:logger]
    ]
  end

  defp deps do
    [{:exprotobuf, "~> 0.10.2"}]
  end
end