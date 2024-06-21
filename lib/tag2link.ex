defmodule Tag2link do
  @moduledoc """
  Documentation for `Tag2link`.
  """
  @mapping :tag2link
           |> Application.app_dir()
           |> Kernel.<>("/priv/index.json")
           |> File.read!()
           |> Jason.decode!(keys: :atoms)
           |> Enum.group_by(& &1[:key])
           |> Enum.map(fn {_key, group} ->
             Enum.find(group, &(&1[:rank] == "preferred")) || hd(group)
           end)

  for %{key: "Key:" <> key, url: url_template} <- @mapping do
    def to_url({unquote(key), value}) do
      String.replace(unquote(url_template), "$1", value)
    end
  end
end
