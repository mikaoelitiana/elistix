defmodule Elistix.Mixfile do
  use Mix.Project

  def project do
    [app: :elistix,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp description do
    """
    Use Elasticsearch along with your Elixir app without learn any new DSL.
    """
  end

  defp package do
    [
      name: "Elistix",
      maintainers: ["Leandro Costantini"],
      licenses: ["GPL 3.0"],
      links: %{"GitHub" => "https://github.com/lcostantini/elistix"}
    ]
  end

  defp deps do
    [{:httpoison, "~> 0.10.0"},
     {:poison, "~> 2.0"}]
  end
end
