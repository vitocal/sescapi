defmodule SescAPI.Unities do
  @capital [
    %{label: "14 Bis", value: "14-bis", id: 49},
    %{label: "24 de Maio", value: "24-de-maio", id: 52},
    %{label: "Avenida Paulista", value: "avenida-paulista", id: 65},
    %{label: "Belenzinho", value: "belenzinho", id: 68},
    %{label: "Bom Retiro", value: "bom-retiro", id: 94},
    %{label: "Campo Limpo", value: "campo-limpo", id: 91},
    %{label: "Carmo", value: "carmo", id: 64},
    %{label: "Casa Verde", value: "casa-verde", id: 60},
    %{label: "CineSesc", value: "cinesesc", id: 59},
    %{label: "Consolação", value: "consolacao", id: 62},
    %{label: "Florêncio de Abreu", value: "florencio-de-abreu", id: 61},
    %{label: "Guarulhos", value: "guarulhos", id: 73},
    %{label: "Interlagos", value: "interlagos", id: 55},
    %{label: "Ipiranga", value: "ipiranga", id: 57},
    %{label: "Itaquera", value: "itaquera", id: 56},
    %{label: "Mogi das Cruzes", value: "mogi-das-cruzes", id: 72},
    %{label: "Osasco", value: "osasco", id: 95},
    %{label: "Pinheiros", value: "pinheiros", id: 58},
    %{label: "Pompeia", value: "pompeia", id: 63},
    %{label: "Santana", value: "santana", id: 53},
    %{label: "Santo Amaro", value: "santo-amaro", id: 70},
    %{label: "Santo André", value: "santo-andre", id: 88},
    %{label: "São Caetano ", value: "sao-caetano", id: 67},
    %{label: "Vila Mariana", value: "vila-mariana", id: 66}
  ]

  @interior [
    %{label: "Araraquara", value: "araraquara", id: 86},
    %{label: "Bauru", value: "bauru", id: 80},
    %{label: "Bertioga", value: "bertioga", id: 71},
    %{label: "Birigui", value: "birigui", id: 85},
    %{label: "Campinas", value: "campinas", id: 75},
    %{label: "Catanduva", value: "catanduva", id: 79},
    %{label: "Jundiaí", value: "jundiai", id: 93},
    %{label: "Piracicaba", value: "piracicaba", id: 83},
    %{label: "Presidente Prudente", value: "presidente-prudente", id: 87},
    %{label: "Registro", value: "registro", id: 92},
    %{label: "Ribeirão Preto", value: "ribeirao-preto", id: 76},
    %{label: "Rio Preto", value: "rio-preto", id: 84},
    %{label: "Santos", value: "santos", id: 78},
    %{label: "São Carlos", value: "sao-carlos", id: 82},
    %{label: "São José dos Campos", value: "sao-jose-dos-campos", id: 77},
    %{label: "Sorocaba", value: "sorocaba", id: 96},
    %{label: "Taubaté", value: "taubate", id: 81}
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
end
