defmodule SescAPI.Unities do
  @capital [
    %{label: "14 Bis", value: "14-bis"},
    %{label: "24 de Maio", value: "24-de-maio"},
    %{label: "Avenida Paulista", value: "avenida-paulista"},
    %{label: "Belenzinho", value: "belenzinho"},
    %{label: "Bom Retiro", value: "bom-retiro"},
    %{label: "Campo Limpo", value: "campo-limpo"},
    %{label: "Carmo", value: "carmo"},
    %{label: "Casa Verde", value: "casa-verde"},
    %{label: "Centro de Pesquisa e Formação", value: "centro-de-pesquisa-e-formacao"},
    %{label: "CineSesc", value: "cinesesc"},
    %{label: "Consolação", value: "consolacao"},
    %{label: "Florêncio de Abreu", value: "florencio-de-abreu"},
    %{label: "Guarulhos", value: "guarulhos"},
    %{label: "Interlagos", value: "interlagos"},
    %{label: "Ipiranga", value: "ipiranga"},
    %{label: "Itaquera", value: "itaquera"},
    %{label: "Mogi das Cruzes", value: "mogi-das-cruzes"},
    %{label: "Osasco", value: "osasco"},
    %{label: "Pinheiros", value: "pinheiros"},
    %{label: "Pompeia", value: "pompeia"},
    %{label: "Santana", value: "santana"},
    %{label: "Santo Amaro", value: "santo-amaro"},
    %{label: "Santo André", value: "santo-andre"},
    %{label: "São Caetano ", value: "sao-caetano"},
    %{label: "Vila Mariana", value: "vila-mariana"}
  ]

  @interior [
    %{label: "Araraquara", value: "araraquara"},
    %{label: "Bauru", value: "bauru"},
    %{label: "Bertioga", value: "bertioga"},
    %{label: "Birigui", value: "birigui"},
    %{label: "Campinas", value: "campinas"},
    %{label: "Catanduva", value: "catanduva"},
    %{label: "Jundiaí", value: "jundiai"},
    %{label: "Piracicaba", value: "piracicaba"},
    %{label: "Presidente Prudente", value: "presidente-prudente"},
    %{label: "Registro", value: "registro"},
    %{label: "Ribeirão Preto", value: "ribeirao-preto"},
    %{label: "Rio Preto", value: "rio-preto"},
    %{label: "Santos", value: "santos"},
    %{label: "São Carlos", value: "sao-carlos"},
    %{label: "São José dos Campos", value: "sao-jose-dos-campos"},
    %{label: "Sorocaba", value: "sorocaba"},
    %{label: "Taubaté", value: "taubate"}
  ]

  def list("interior"), do: @interior
  def list("litoral"), do: @interior
  def list("capital"), do: @capital

  def list() do
    @capital ++ @interior
  end
end
