defmodule SescAPI.MockServer do
  use Plug.Router

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["text/*"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)

  @data File.read!("test/fixtures/musica-show.json") |> Jason.decode!()

  get "/wp-json/wp/v1/atividades/filter" do
    case conn.params do
      %{"categoria" => "musica-show"} ->
        success(conn, %{"atividade" => @data})

      _ ->
        failure(conn)
    end
  end

  defp success(conn, body) do
    conn
    |> Plug.Conn.put_resp_content_type("application/json")
    |> Plug.Conn.send_resp(200, Jason.encode!(body))
  end

  defp failure(conn) do
    conn
    |> Plug.Conn.put_resp_content_type("application/json")
    |> Plug.Conn.send_resp(422, Jason.encode!(%{message: "error message"}))
  end
end
