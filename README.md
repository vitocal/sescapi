# Sescapi

Consumes SESC activities API directly from `sescsp.org.br`

## Product

A calendar interface SESC sesc activies.
Very useful to browser shows and courses.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sescapi` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sescapi, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/sescapi>.

# Misc

General activities listing
https://www.sescsp.org.br/wp-json/wp/v1/atividades/filter?tipo=atividade
[{
  "id": 763245,
  "link": "/programacao/oficina-culinaria-pao-de-batata-e-pao-australiano",
  "titulo": "Oficina culinária - pão de batata e pão australiano",
  "complemento": "Com a nutricionista Gabriela Wojakevicz Barbosa de Oliveira",
  "cancelado": "",
  "esgotado": "",
  "unidade": [
    {
      "name": "São Caetano ",
      "link": "/unidades/sao-caetano"
    }
  ],
  "conjunto": [
    {
      "name": null,
      "link": null
    }
  ],
  "qtdeIngressosWeb": null,
  "qtdeIngressosRede": null,
  "codigoStatusEvento": null,
  "categorias": [
    {
      "link": "/categorias-atividades/alimentacao",
      "titulo": "Alimentação",
      "cor": "#e33351"
    },
    {
      "link": "/categorias-atividades/alimentacao-oficina",
      "titulo": "oficina",
      "cor": ""
    }
  ],
  "imagem": "https://www.sescsp.org.br/wp-content/uploads/2024/10/Oficina-de-paes.jpg",
  "imagens": {
    "atividade-img": {
      "file": "Oficina-de-paes-664x332.jpg",
      "width": 664,
      "filesize": 24783,
      "height": 332,
      "mime-type": "image/jpeg"
    },
    "homepage-thumb": {
      "file": "Oficina-de-paes-320x160.jpg",
      "width": 320,
      "filesize": 8944,
      "height": 160,
      "mime-type": "image/jpeg"
    },
    "medium": {
      "file": "Oficina-de-paes-300x150.jpg",
      "width": 300,
      "filesize": 8326,
      "height": 150,
      "mime-type": "image/jpeg"
    },
    "medium_large": {
      "file": "Oficina-de-paes-768x384.jpg",
      "width": 768,
      "filesize": 30157,
      "height": 384,
      "mime-type": "image/jpeg"
    },
    "projeto-thumb": {
      "file": "Oficina-de-paes-256x160.jpg",
      "width": 256,
      "filesize": 7506,
      "height": 160,
      "mime-type": "image/jpeg"
    },
    "sites-card-img": {
      "file": "Oficina-de-paes-360x180.jpg",
      "width": 360,
      "filesize": 10754,
      "height": 180,
      "mime-type": "image/jpeg"
    },
    "thumbnail": {
      "file": "Oficina-de-paes-150x150.jpg",
      "width": 150,
      "filesize": 3917,
      "height": 150,
      "mime-type": "image/jpeg"
    }
  },
  "dataProxSessao": "2024-10-05T18:00:00Z",
  "dataPrimeiraSessao": "2024-10-05T17:00:00Z",
  "dataUltimaSessao": "2024-10-05T18:00:00Z"
}, {...}]

id corresponde ao id do wordpress, e nao id do evento

## Activity Details
Nem toda atividade tem detalhes/bilheteria (por exemplo, cursos e atividades gerais).
Geralmente se codigoStatusEvento=null, nao tem atividade. Na pagina wordpress do evento, o idAtividade é igual a [data_flag="abc"]
https://portal.sescsp.org.br/bilheteria/atividade.action?idAtividade=236487
{
  "idAtividade": 236487,
  "idTipoAtividade": 1,
  "tipoAtividade": "Programação",
  "codigoEventoSesc": "4790",
  "titulo": "Ivyson",
  "tituloSesc": "IVYSON",
  "complemento": null,
  "texto": " ",
  "descricao": null,
  "codigoStatus": "RA",
  "nomeStatus": "Rascunho",
  "urlSite": null,
  "url": "236487_IVYSON",
  "urlTwitter": null,
  "urlFacebook": null,
  "urlCursoInscricao": null,
  "urlnstagram": null,
  "googleDataLayer": "{\"dimension8\":\"musica\",\"dimension10\":\"04/10_a_05/10\",\"dimension9\":\"ivyson\",\"dimension7\":\"sesc_ipiranga\"}",
  "tituloCategoria": "Música - Ipiranga",
  "canalVenda": "CRD",
  "dataInclusao": 1726860772000,
  "dataAlteracao": 1726866180000,
  "dataExclusao": null,
  "dataPublicacao": null,
  "dataDespublicacao": null,
  "exibirOnline": false,
  "destaqueNewsletter": false,
  "excluido": false,
  "institutionalProjeto": false,
  "vendaBloqueada": false,
  "unidadePrincipal": {
    "id": 5,
    "codigoSesc": "57",
    "nome": "Ipiranga",
    "endereco": "Rua Bom Pastor, 822 | Ipiranga | SAO PAULO  | SP | Cep: 04203-000",
    "lat": "-23.5839231",
    "lng": "-46.60780840000001",
    "feriadoMensagem": null
  },
  "conjuntoInstitucionalDTO": null,
  "ultimaSessao": null,
  "sessoes": [
    {
      "idSessao": 946698,
      "idAtividade": 236487,
      "qtdeIngressosRede": 50,
      "qtdeIngressosWeb": 20,
      "idMapaTeatro": 570,
      "idEvento": 0,
      "totalSessaoEventos": null,
      "statusIngresso": "Disponível",
      "horaInicial": "20",
      "minutoInicial": "00",
      "horaFinal": "20",
      "minutoFinal": "00",
      "codigoStatusEvento": "0",
      "dscStatusEvento": "Disponivel",
      "codigoStatusWP": null,
      "dscStatusWP": null,
      "codigoTipoVenda": "C",
      "nomeTipoVenda": "Cadeira Marcada",
      "infoInscricao": null,
      "codigoUnidadeSesc": null,
      "codigoEventoSesc": "4790",
      "observacao": null,
      "endereco": null,
      "comentario": "INGRESSO NÃO PODE SER DEVOLVIDO/TROCADO",
      "comentario1": null,
      "maxTicketSessao": null,
      "maxTicketEvento": "2",
      "minSeats": 1,
      "maxSeats": 10,
      "compraDesabilitada": null,
      "enderecoPqDomPedroII": null,
      "nomePqDomPedroII": null,
      "urlPortal": null,
      "nomeMapaAssentos": "TEATRO SESC IPIRANGA",
      "dataInicialSessao": 1728010800000,
      "dataFinalSessao": 1728010800000,
      "dataInclusao": 1726860772000,
      "dataAlteracao": 1727912373000,
      "dataInicialVendaOnline": 1727208000000,
      "dataFinalVendaOnline": 1728075600000,
      "dataInicialVendaRede": 1727294400000,
      "dataFinalVendaRede": 1728086400000,
      "dataAgendada": null,
      "dataInicialSessaoFmt": "2024-10-04T20:00",
      "dataFinalSessaoFmt": "2024-10-04T20:00",
      "dataInicialVendaOnlineFmt": "2024-09-24T17:00",
      "dataFinalVendaOnlineFmt": "2024-10-04T18:00",
      "dataInicialVendaRedeFmt": "2024-09-25T17:00",
      "dataFinalVendaRedeFmt": "2024-10-04T21:00",
      "valorMeia": 30,
      "valorInteira": 60,
      "valorComerciario": 18,
      "valorGratuitoInfantil": 0,
      "valorMeiaFmt": "$30.00",
      "valorInteiraFmt": "$60.00",
      "valorComerciarioFmt": "$18.00",
      "valorGratuitoInfantilFmt": "$0.00",
      "hasCategoriaOpcional": false,
      "gratuito": false,
      "gratuitoTaxasZero": false,
      "unityPqDomPedroII": false,
      "ingressoOnlineDisponivel": true,
      "exibirSessaoWP": null,
      "urlCompra": "https://centralrelacionamento.sescsp.org.br/?path=detalhes-atividade&amp;unidade=57&amp;id=4790",
      "statusSessaoSesc": "DISPONIVEL_WEB",
      "canalVenda": "CRD",
      "segunda": 0,
      "terça": 0,
      "quarta": 0,
      "quinta": 0,
      "sexta": 1,
      "sabado": 0,
      "domingo": 0,
      "segundaSN": "Não",
      "terçaSN": "Não",
      "quartaSN": "Não",
      "quintaSN": "Não",
      "sextaSN": "Sim",
      "sabadoSN": "Não",
      "domingoSN": "Não",
      "unidade": {
        "id": 5,
        "codigoSesc": "57",
        "nome": "Ipiranga",
        "endereco": "Rua Bom Pastor, 822 | Ipiranga | SAO PAULO  | SP | Cep: 04203-000",
        "lat": "-23.5839231",
        "lng": "-46.60780840000001",
        "feriadoMensagem": null
      }
    },
    {
      "idSessao": 946699,
      "idAtividade": 236487,
      "qtdeIngressosRede": 47,
      "qtdeIngressosWeb": 15,
      "idMapaTeatro": 570,
      "idEvento": 0,
      "totalSessaoEventos": null,
      "statusIngresso": "Disponível",
      "horaInicial": "20",
      "minutoInicial": "00",
      "horaFinal": "20",
      "minutoFinal": "00",
      "codigoStatusEvento": "0",
      "dscStatusEvento": "Disponivel",
      "codigoStatusWP": null,
      "dscStatusWP": null,
      "codigoTipoVenda": "C",
      "nomeTipoVenda": "Cadeira Marcada",
      "infoInscricao": null,
      "codigoUnidadeSesc": null,
      "codigoEventoSesc": "4790",
      "observacao": null,
      "endereco": null,
      "comentario": "INGRESSO NÃO PODE SER DEVOLVIDO/TROCADO",
      "comentario1": null,
      "maxTicketSessao": null,
      "maxTicketEvento": "2",
      "minSeats": 1,
      "maxSeats": 10,
      "compraDesabilitada": null,
      "enderecoPqDomPedroII": null,
      "nomePqDomPedroII": null,
      "urlPortal": null,
      "nomeMapaAssentos": "TEATRO SESC IPIRANGA",
      "dataInicialSessao": 1728097200000,
      "dataFinalSessao": 1728097200000,
      "dataInclusao": 1726860772000,
      "dataAlteracao": 1727912373000,
      "dataInicialVendaOnline": 1727208000000,
      "dataFinalVendaOnline": 1728162000000,
      "dataInicialVendaRede": 1727294400000,
      "dataFinalVendaRede": 1728172800000,
      "dataAgendada": null,
      "dataInicialSessaoFmt": "2024-10-05T20:00",
      "dataFinalSessaoFmt": "2024-10-05T20:00",
      "dataInicialVendaOnlineFmt": "2024-09-24T17:00",
      "dataFinalVendaOnlineFmt": "2024-10-05T18:00",
      "dataInicialVendaRedeFmt": "2024-09-25T17:00",
      "dataFinalVendaRedeFmt": "2024-10-05T21:00",
      "valorMeia": 30,
      "valorInteira": 60,
      "valorComerciario": 18,
      "valorGratuitoInfantil": 0,
      "valorMeiaFmt": "$30.00",
      "valorInteiraFmt": "$60.00",
      "valorComerciarioFmt": "$18.00",
      "valorGratuitoInfantilFmt": "$0.00",
      "hasCategoriaOpcional": false,
      "gratuito": false,
      "gratuitoTaxasZero": false,
      "unityPqDomPedroII": false,
      "ingressoOnlineDisponivel": true,
      "exibirSessaoWP": null,
      "urlCompra": "https://centralrelacionamento.sescsp.org.br/?path=detalhes-atividade&amp;unidade=57&amp;id=4790",
      "statusSessaoSesc": "DISPONIVEL_WEB",
      "canalVenda": "CRD",
      "segunda": 0,
      "terça": 0,
      "quarta": 0,
      "quinta": 0,
      "sexta": 0,
      "sabado": 1,
      "domingo": 0,
      "segundaSN": "Não",
      "terçaSN": "Não",
      "quartaSN": "Não",
      "quintaSN": "Não",
      "sextaSN": "Não",
      "sabadoSN": "Sim",
      "domingoSN": "Não",
      "unidade": {
        "id": 5,
        "codigoSesc": "57",
        "nome": "Ipiranga",
        "endereco": "Rua Bom Pastor, 822 | Ipiranga | SAO PAULO  | SP | Cep: 04203-000",
        "lat": "-23.5839231",
        "lng": "-46.60780840000001",
        "feriadoMensagem": null
      }
    }
  ],
  "classificacaoMinina": "14",
  "classificacaoMaxima": null,
  "classificacaoEntre1": null,
  "classificacaoEntre2": null,
  "classificacaoAte": null,
  "tipoClassificacao": "Não recomendado para menores de",
  "tipoClassificacaoDesc": null,
  "codigoRetorno": 0,
  "mensagemRetorno": "SUCESSO",
  "totalSessoes": 2,
  "possuiMais20Sessoes": false,
  "urlInstagram": null
}


## Central de relacionamento

Central de relacionamento also has an API (needs login with JWT before)

### Course listing:
https://centralrelacionamento-api.sescsp.org.br/inscricoes-online/cursos?unidades=58,63
[
  {
    "turmaId": "21497191-89",
    "cursoTitulo": "A construção da identidade culinária brasileira",
    "unidadeNome": "Centro de Pesquisa E Formação",
    "turmaDias": "De 19/10 até 26/10 <br/>Sábado - 14:00h às 17:00h",
    "turmaClassificacao": {
      "classificacao": "",
      "classificacaoTooltip": "",
      "classificacaoCorDoTexto": "",
      "classificacaoCorDoFundo": ""
    },
    "turmaTags": [
      {
        "descricao": "Vagas Esgotadas",
        "tooltip": "Vagas esgotadas para essa turma.",
        "ordem": 1,
        "corDoTexto": "#FFFFFF",
        "corDoFundo": "#000000"
      },
      {
        "descricao": "Público em geral",
        "tooltip": "Permite inscrições para todos os publicos.",
        "ordem": 2,
        "corDoTexto": "#000000",
        "corDoFundo": "#C7C7C7"
      },
      {
        "descricao": "Livre",
        "tooltip": "Livre",
        "ordem": 3,
        "corDoTexto": "#000000",
        "corDoFundo": "#C7C7C7"
      },
      {
        "descricao": "Alimentação",
        "tooltip": "Alimentação",
        "ordem": 4,
        "corDoTexto": "#000000",
        "corDoFundo": "#C7C7C7"
      }
    ],
    "vagasDisponiveis": 0,
    "vagasALiberar": 0,
    "permitirApenasCredenciados": false,
    "finalizarFila": true
  },
]

### Course details with `turma_id`
https://centralrelacionamento-api.sescsp.org.br/inscricoes-online/cursos/21496841-85
{
  "turmaId": "21496841-85",
  "curso": "Alimentação Biodiversa e PANC",
  "turma": null,
  "turmaClassificacao": {
    "classificacao": "",
    "classificacaoTooltip": "",
    "classificacaoCorDoTexto": "#FFFFFF",
    "classificacaoCorDoFundo": "#000000"
  },
  "turmaTags": [
    {
      "descricao": "Público em geral",
      "tooltip": "Permite inscrições para todos os publicos.",
      "ordem": 1,
      "corDoTexto": "#000000",
      "corDoFundo": "#C7C7C7"
    },
    {
      "descricao": "Grátis",
      "tooltip": "Turma gratuita.",
      "ordem": 2,
      "corDoTexto": "#000000",
      "corDoFundo": "#C7C7C7"
    },
    {
      "descricao": "A partir de 16 anos",
      "tooltip": "A partir de 16 anos",
      "ordem": 3,
      "corDoTexto": "#000000",
      "corDoFundo": "#C7C7C7"
    }
  ],
  "turmaPrecos": [
    {
      "tipo": "TEXTO",
      "tooltip": "Turma gratuita.",
      "ordem": 1,
      "preco": "Grátis"
    }
  ],
  "informativo": "Aprender sobre a alimentação é importante para auxiliar nas escolhas nutricionais, na preparação de um prato e exaltação sabor. A partir dessa compreensão, esse curso propõe incentivar e fornecer conhecimentos teóricos e práticos que auxiliem os participantes a incluírem PANC (plantas comestíveis não convencionais) no seu cardápio, diversificando sua alimentação e tornando-a mais rica e saudável.  <br/>Mergulhe no universo das Plantas Alimentícias Não Convencionais (PANC) com o curso \"Alimentação Biodiversa\". Este curso aprofundado oferece módulos abrangentes que cobrem todos os aspectos das PANC, desde o reconhecimento de espécies encontradas até nas ruas até a identificação e cultivo em sua própria casa. Aprenda a valorizar a biodiversidade alimentar, desenvolvendo habilidades para identificar e cultivar essas plantas ricas em nutrientes e sabor.<br/>O curso culmina com uma aula prática de culinária PANC, onde você descobrirá receitas inovadoras e modos de preparo seguro, transformando seu aprendizado em pratos deliciosos e saudáveis. Ideal para entusiastas da alimentação natural, jardineiros urbanos e qualquer pessoa interessada em explorar novos horizontes gastronômicos.<br/><br/>Inscrições pelo portal de 01 a 15/10.<br/><br/>Destaques do Curso:<br/><br/>Reconhecimento e identificação de espécies PANC<br/>Técnicas de cultivo para casa e jardim<br/>Aula prática de culinária com receitas e preparo seguro<br/>Aprofundamento na biodiversidade alimentar e seus benefícios<br/><br/><br/>Beatriz Carvalho, geógrafa pela Universidade Federal de Alfenas, pós graduada em Educação Ambiental pela Usp e mestre em Planejamento Urbano e Regional pela Univap. Criou há 10 anos o Mato no Prato, um projeto de alimentação sustentável que foi eleito atualmente como um dos 70 principais negócios de impacto socioambiental do mundo pela Meta e outras marcas globais.<br/><br/>",
  "cabecalho": "<p><br />Inscri&ccedil;&otilde;es de 01/10 &agrave;s 00h01 at&eacute; 15/10 &agrave;s 23h59, enquanto houver vagas dispon&iacute;veis.<br /><b>Limite de uma inscri&ccedil;&atilde;o por pessoa</b></p>",
  "tipoTurma": "INSCRICAO",
  "turmaPeriodo": "De 16/10 até 17/10<br/>Quarta e Quinta - 18:30h às 21:30h",
  "unidade": "Sesc Birigui",
  "haVagasDisponiveis": true
}


### Event listing:
https://venda-ingresso.sescsp.org.br/eventos?status=DISPONIVEL&idCategoria=13
[{
  "quantidadeTotal": 49,
  "dados": [
    {
      "id": 161,
      "nome": "PAULO MIKLOS - SHOW EM PÉ",
      "detalhamento": "Ao completar 40 anos de carreira, Paulo Miklos apresenta um show baseado em toda sua trajetória, desde as grandes obras dos Titãs até sucessos de sua carreira solo, bem como homenagens a artistas como Adoniram Barbosa, Sabotage e Raul Seixas.",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A12",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 72000000000007200,
        "nome": "SESC MOGI DAS CRUZES"
      },
      "unidade": {
        "id": 72,
        "nome": "SESC MOGI DAS CRUZES"
      },
      "valorIngresso": {
        "menorValor": 18,
        "maiorValor": 60,
        "precoInteira": 60,
        "precoMeia": 30,
        "precoCredencial": 18
      },
      "dataEvento": {
        "menorData": "2024-10-19",
        "maiorData": "2024-10-19"
      },
      "tipoEvento": "SEQUENCIAL"
    },
    {
      "id": 7170,
      "nome": "POSSIBILIDADES EDUCATIVAS EM MÚSICA PARA PCD",
      "detalhamento": "A palestra apresentará os caminhos alternativos, a acessibilidade e a inclusão musical através de possibilidades educativas fundamentadas em um ensino organizado e intencional que contemple as particularidades das deficiências.",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A14",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 66000000000006610,
        "nome": "AUDITORIO VILA MARIANA"
      },
      "unidade": {
        "id": 66,
        "nome": "SESC VILA MARIANA"
      },
      "valorIngresso": {
        "menorValor": 0,
        "maiorValor": 0,
        "precoInteira": 0,
        "precoMeia": 0,
        "precoCredencial": 0
      },
      "dataEvento": {
        "menorData": "2024-10-05",
        "maiorData": "2024-10-05"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 2
    },
    {
      "id": 7166,
      "nome": "\"PRODUÇÃO MUSICAL ELETRÔNICA PARA A CANÇÃO\"",
      "detalhamento": "A cantora e compositora Jadsa e o músico e produtor João Meirelles falam sobre pesquisa, processos criativos e técnicos utilizados no projeto TAXIDERMIA para a construção de paisagens sonoras eletrônicas no contexto da canção brasileira.",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A16",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 66000000000006610,
        "nome": "AUDITORIO VILA MARIANA"
      },
      "unidade": {
        "id": 66,
        "nome": "SESC VILA MARIANA"
      },
      "valorIngresso": {
        "menorValor": 0,
        "maiorValor": 0,
        "precoInteira": 0,
        "precoMeia": 0,
        "precoCredencial": 0
      },
      "dataEvento": {
        "menorData": "2024-10-09",
        "maiorData": "2024-10-09"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 2
    },
    {
      "id": 4466,
      "nome": "RICK WAKEMAN PROJECT ",
      "detalhamento": "Idealizado por Renato Moog e Cassiano Musicman, a Rick Wakeman Project apresenta uma experiência imersiva no álbum \"Viagem ao Centro da Terra\" do pianista Rick Wakeman.",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A16",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 75000000000000080,
        "nome": "TEATRO CAMPINAS"
      },
      "unidade": {
        "id": 75,
        "nome": "SESC CAMPINAS"
      },
      "valorIngresso": {
        "menorValor": 15,
        "maiorValor": 50,
        "precoInteira": 50,
        "precoMeia": 25,
        "precoCredencial": 15
      },
      "dataEvento": {
        "menorData": "2024-10-10",
        "maiorData": "2024-10-10"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 4
    },
    {
      "id": 131,
      "nome": "SIRICUTICO AS AVENTURAS DA MENINA FLOR...",
      "detalhamento": "A menina Flor tem muito medo de brincar lá fora. Não que ela seja medrosa...Na verdade ela não sai muito para o quintal porque não tem companhia para brincar, mas hoje tudo vai mudar!",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "AL",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 49000000000004904,
        "nome": "TEATRO RAUL CORTEZ (RUA PLINIO BARRETO, 285)"
      },
      "unidade": {
        "id": 49,
        "nome": "SESC 14 BIS"
      },
      "valorIngresso": {
        "menorValor": 15,
        "maiorValor": 50,
        "precoInteira": 50,
        "precoMeia": 25,
        "precoCredencial": 15
      },
      "dataEvento": {
        "menorData": "2024-10-13",
        "maiorData": "2024-10-13"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 4
    },
    {
      "id": 4792,
      "nome": "SOPHIA CHABLAU E UMA ENORME PERDA DE TEM",
      "detalhamento": "Sophia Chablau e Uma Enorme Perda de Tempo faz show, que transcende o rock e o underground com uma produção enérgica e mordaz.A banda é composta por Sophia Chablau (voz/guitarra),Téo Serson (baixo),Theo Ceccato (bateria) e Vicente Tassara(guitarra/teclado",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A12",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 57000000000000570,
        "nome": "TEATRO SESC IPIRANGA"
      },
      "unidade": {
        "id": 57,
        "nome": "SESC IPIRANGA"
      },
      "valorIngresso": {
        "menorValor": 18,
        "maiorValor": 60,
        "precoInteira": 60,
        "precoMeia": 30,
        "precoCredencial": 18
      },
      "dataEvento": {
        "menorData": "2024-10-12",
        "maiorData": "2024-10-13"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 2
    },
    {
      "id": 7171,
      "nome": "TAXIDERMIA LANÇAMENTO DO ÁLBUM \"VERA CRUZ ISLAND\"",
      "detalhamento": "Taxidermia, dupla formada pela cantora e compositora Jadsa em parceria com o músico e produtor João Meirelles, apresenta ao público o primeiro trabalho de estúdio do projeto, Vera Cruz Island (2024). São doze composições que destacam a relação dos dois...",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A12",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 66000000000006610,
        "nome": "AUDITORIO VILA MARIANA"
      },
      "unidade": {
        "id": 66,
        "nome": "SESC VILA MARIANA"
      },
      "valorIngresso": {
        "menorValor": 15,
        "maiorValor": 50,
        "precoInteira": 50,
        "precoMeia": 25,
        "precoCredencial": 15
      },
      "dataEvento": {
        "menorData": "2024-10-10",
        "maiorData": "2024-10-10"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 2
    },
    {
      "id": 2434,
      "nome": "THAÍDE ",
      "detalhamento": "Thaíde é um dos pioneiros do hip hop no Brasil, e celebra 40 anos de trajetória trazendo para os palcos todos os elementos da cultura hip hop e os grandes sucessos de sua carreira.",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A12",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 53000000000000530,
        "nome": "TEATRO SESC SANTANA"
      },
      "unidade": {
        "id": 53,
        "nome": "SESC SANTANA"
      },
      "valorIngresso": {
        "menorValor": 18,
        "maiorValor": 60,
        "precoInteira": 60,
        "precoMeia": 30,
        "precoCredencial": 18
      },
      "dataEvento": {
        "menorData": "2024-10-05",
        "maiorData": "2024-10-05"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 4
    },
    {
      "id": 762,
      "nome": "TONY TORNADO & FUNKESSENC SOUL & EMOÇÃO",
      "detalhamento": " ",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "AL",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 73000000000000740,
        "nome": "TEATRO SESC GUARULHOS"
      },
      "unidade": {
        "id": 73,
        "nome": "SESC GUARULHOS"
      },
      "valorIngresso": {
        "menorValor": 15,
        "maiorValor": 50,
        "precoInteira": 50,
        "precoMeia": 25,
        "precoCredencial": 15
      },
      "dataEvento": {
        "menorData": "2024-10-04",
        "maiorData": "2024-10-05"
      },
      "tipoEvento": "NUMERADO"
    },
    {
      "id": 1214,
      "nome": "TRIO IMPRESSÕES ENCONTRO COM A MÚSICA LAT",
      "detalhamento": "O Trio Impressões convida o público a uma viagem musical pela rica e vibrante tradição latino-americana. Com formação clássica de violino, violoncelo e piano, o trio interpreta obras de Villani-Cortes, Piazzolla, Nazareth e Franzetti.",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "L",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 85000000000000850,
        "nome": "TEATRO BIRIGUI"
      },
      "unidade": {
        "id": 85,
        "nome": "SESC BIRIGUI"
      },
      "valorIngresso": {
        "menorValor": 12,
        "maiorValor": 40,
        "precoInteira": 40,
        "precoMeia": 20,
        "precoCredencial": 12
      },
      "dataEvento": {
        "menorData": "2024-10-04",
        "maiorData": "2024-10-04"
      },
      "tipoEvento": "NUMERADO"
    }
  ]
}]

### Event details with `unidade.id/id`
https://venda-ingresso.sescsp.org.br/eventos/53/2434?tipoPedido=BILHETERIA
{
  "quantidadeTotal": 1,
  "dados": [
    {
      "id": 2434,
      "nome": "THAÍDE ",
      "detalhamento": "Thaíde é um dos pioneiros do hip hop no Brasil, e celebra 40 anos de trajetória trazendo para os palcos todos os elementos da cultura hip hop e os grandes sucessos de sua carreira.",
      "img": null,
      "status": "DISPONIVEL",
      "duracaoEvento": null,
      "classificacao": "A12",
      "categoria": {
        "id": 13,
        "nome": "MÚSICA"
      },
      "local": {
        "id": 53000000000000530,
        "nome": "TEATRO SESC SANTANA"
      },
      "unidade": {
        "id": 53,
        "nome": "SESC SANTANA"
      },
      "valorIngresso": {
        "menorValor": 18,
        "maiorValor": 60,
        "precoInteira": 60,
        "precoMeia": 30,
        "precoCredencial": 18
      },
      "dataEvento": {
        "menorData": "2024-10-05",
        "maiorData": "2024-10-05"
      },
      "tipoEvento": "NUMERADO",
      "limiteVendaEvento": 4
    }
  ]
}
