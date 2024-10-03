defmodule SescAPI.Categories do
  @moduledoc """
  Categories available in sesc
  """
  @categories [
    %{value: "", label: "Tudo"},
    %{value: "acoes-para-cidadania", label: "Ações para Cidadania"},
    %{value: "alimentacao", label: "Alimentação"},
    %{value: "artes-visuais", label: "Artes Visuais"},
    %{value: "cinema-e-video", label: "Cinema e Vídeo"},
    %{value: "circo", label: "Circo"},
    %{value: "criancas", label: "Crianças"},
    %{value: "danca", label: "Dança"},
    %{value: "empresas", label: "Empresas"},
    %{value: "esportes-e-atividade-fisica", label: "Esporte e Atividade Física"},
    %{value: "gestao-cultural", label: "Gestão Cultural"},
    %{value: "intergeracoes", label: "Intergerações"},
    %{value: "jovens", label: "Jovens"},
    %{value: "literatura", label: "literatura"},
    %{value: "meio-ambiente", label: "Meio Ambiente"},
    %{value: "multilinguagem", label: "Multilinguagem"},
    %{value: "musica", label: "Música"},
    %{value: "pessoas-idosas", label: "Pessoas Idosas"},
    %{value: "saude", label: "Saúde"},
    %{value: "teatro", label: "Teatro"},
    %{value: "tecnologias-e-artes", label: "Tecnologias e Artes"},
    %{value: "turismo", label: "Turismo"}
  ]

  def list(), do: @categories
end
