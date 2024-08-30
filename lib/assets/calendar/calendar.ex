defmodule Assets.Calendar do
  use Kino.JS

  use Kino.JS, assets_path: "lib/assets/calendar/build"

  def new(data) do
    Kino.JS.new(__MODULE__, data)
  end
end
