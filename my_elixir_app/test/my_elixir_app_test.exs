defmodule MyElixirAppTest do
  use ExUnit.Case
  doctest MyElixirApp

  test "greets the world" do
    assert MyElixirApp.hello() == :world
  end
end
