defmodule Tag2linkTest do
  use ExUnit.Case
  doctest Tag2link

  test "generates urls" do
    assert Tag2link.to_url({"HE_ref", "1343217"}) ==
             "https://historicengland.org.uk/listing/the-list/list-entry/1343217"
  end
end
