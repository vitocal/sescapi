defmodule SescAPI.Activities do
  @moduledoc """
  API module to consume services of brazil `sesc` units.
  """
  require Req

  @fqdn "https://www.sescsp.org.br/"
  @prefix "wp-json/wp/v1"
  # @base_url "#{@fqdn}/#{@prefix}"

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
  def filter do
    %Req.Response{status: 200, body: %{"atividade" => activities}} =
      [
        url: "#{@prefix}/atividades/filter",
        params: [
          data_inicial: "",
          data_final: "",
          local: "",
          categoria: "",
          ppp: 10,
          page: 1,
          tipo: "atividade"
        ]
      ]
      |> req_config(:activities_filter)
      |> Req.request!()

    activities |> to_struct(%Activity{})
  end

  defp map_to_atomized_keys!(map) do
    Jason.encode!(map) |> Jason.decode!(keys: :atoms)
  end

  @doc """
  Convert a map to a struct, translating the string keys into atoms
  """
  def to_struct(map, target_struct) do
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
