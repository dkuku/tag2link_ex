defmodule Tag2link.MixProject do
  use Mix.Project

  def project do
    [
      app: :tag2link,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:jason, "~> 1.4", runtime: false},
      {:req, "~> 0.5", runtime: false}
    ]
  end

  defp description() do
    "URL formatter for openstreetmap tags"
  end

  defp package() do
    [
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["ISC"],
      links: %{
        "GitHub" => "https://github.com/dkuku/tag2link_ex",
        "Original project" => "https://github.com/JOSM/tag2link"
      }
    ]
  end
end
