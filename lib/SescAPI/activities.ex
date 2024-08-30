defmodule SescAPI.Activities do
  @moduledoc """
  API module to search `sesc` shows, events and activities.
  """
  require Req

  @fqdn "https://www.sescsp.org.br/"
  @prefix "wp-json/wp/v1"

  defmodule Activity do
    # @enforce_keys [:id, :link, :titulo]
    defstruct [
      :id,
      :link,
      :titulo,
      :complemento,
      :cancelado,
      :esgotado,
      :unidade,
      conjunto: [],
      qtdeIngressosWeb: 0,
      qtdeIngressosRede: 0,
      codigoStatusEvento: nil,
      categorias: [],
      imagem: "",
      imagens: [],
      dataProxSessao: nil,
      dataPrimeiraSessao: nil,
      dataUltimaSessao: nil
    ]

    def new(attrs) do
      activity = struct(%Activity{}, attrs)
      {:ok, dataProxSessao, _} = DateTime.from_iso8601("#{activity.dataProxSessao}:00Z")
      Map.put(activity, :dataProxSessao, dataProxSessao)
    end
  end

  @doc """
  Fetch activities from sesc
  """
  def filter(opts \\ []) do
    opts =
      [
        data_inicial: "",
        data_final: "",
        local: "",
        categoria: "",
        source: "null",
        ppp: 10,
        page: 1,
        tipo: "atividade"
      ] ++ opts

    %Req.Response{status: 200, body: %{"atividade" => activities}} =
      [
        url: "#{@prefix}/atividades/filter",
        params: opts
      ]
      |> req_config(:activities_filter)
      |> Req.request!()

    activities
    |> map_to_atomized_keys!()
    |> Enum.map(&Activity.new/1)
  end

  defp map_to_atomized_keys!(map) do
    Jason.encode!(map) |> Jason.decode!(keys: :atoms)
  end

  defp req_config(req, req_atom) do
    api_plugs = Application.get_env(:sescapi, :sesc_api_plugs, [])

    req_plug =
      (Keyword.get(api_plugs, req_atom) &&
         [plug: {Req.Test, req_atom}]) || []

    [base_url: @fqdn]
    |> Keyword.merge(Application.get_env(:sescapi, :sesc_req_options, []))
    |> Keyword.merge(req)
    |> Keyword.merge(req_plug)
  end
end
