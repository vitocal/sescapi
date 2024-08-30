defmodule SescAPI.Activities do
  @moduledoc """
  API module to consume services of brazil `sesc` units.
  """
  require Req

  @fqdn "https://www.sescsp.org.br/"
  @prefix "wp-json/wp/v1"

  defmodule Activity do
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

    activities |> map_as_struct(%Activity{})
  end

  defp map_to_atomized_keys!(map) do
    Jason.encode!(map) |> Jason.decode!(keys: :atoms)
  end

  @doc """
  Convert a list of maps into a list of struct's.
  The map string keys are converted to :atoms
  """
  def map_as_struct(map, target_struct) do
    map
    |> map_to_atomized_keys!()
    |> Enum.map(&struct(target_struct, &1))
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
