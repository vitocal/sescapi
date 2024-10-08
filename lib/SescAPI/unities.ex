defmodule SescAPI.Unities do
  @capital [
    %{label: "14 Bis", value: 49},
    %{label: "24 de Maio", value: 52},
    %{label: "Avenida Paulista", value: 65},
    %{label: "Belenzinho", value: 68},
    %{label: "Bom Retiro", value: 94},
    %{label: "Campo Limpo", value: 91},
    %{label: "Carmo", value: 64},
    %{label: "Casa Verde", value: 60},
    %{label: "CineSesc", value: 59},
    %{label: "Consolação", value: 62},
    %{label: "Florêncio de Abreu", value: 61},
    %{label: "Guarulhos", value: 73},
    %{label: "Interlagos", value: 55},
    %{label: "Ipiranga", value: 57},
    %{label: "Itaquera", value: 56},
    %{label: "Mogi das Cruzes", value: 72},
    %{label: "Osasco", value: 95},
    %{label: "Pinheiros", value: 58},
    %{label: "Pompeia", value: 63},
    %{label: "Santana", value: 53},
    %{label: "Santo Amaro", value: 70},
    %{label: "Santo André", value: 88},
    %{label: "São Caetano ", value: 67},
    %{label: "Vila Mariana", value: 66}
  ]

  @interior [
    %{label: "Araraquara", value: 86},
    %{label: "Bauru", value: 80},
    %{label: "Bertioga", value: 71},
    %{label: "Birigui", value: 85},
    %{label: "Campinas", value: 75},
    %{label: "Catanduva", value: 79},
    %{label: "Jundiaí", value: 93},
    %{label: "Piracicaba", value: 83},
    %{label: "Presidente Prudente", value: 87},
    %{label: "Registro", value: 92},
    %{label: "Ribeirão Preto", value: 76},
    %{label: "Rio Preto", value: 84},
    %{label: "Santos", value: 78},
    %{label: "São Carlos", value: 82},
    %{label: "São José dos Campos", value: 77},
    %{label: "Sorocaba", value: 96},
    %{label: "Taubaté", value: 81}
  ]

  @doc """
  List sesc unities
  """
  def list("interior"), do: @interior
  def list("litoral"), do: @interior
  def list("capital"), do: @capital

  def list() do
    @capital ++ @interior
  end

  def find_by_value(value) do
    list()
    |> Enum.find(fn unity -> unity[:value] == value end)
  end
end
