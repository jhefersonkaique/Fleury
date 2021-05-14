Dado("acessar o home do site") do
  @home = HomePage.new
  @home.load
end

Quando('selecionar no menu a opcao unidades') do
  @unidades = UnidadesPage.new
  @home.clicar(@home.a_unidades[3])
end

E('selecionar a facilidade') do
  @unidades.clicar(@unidades.div_facilidades)
  @unidades.clicar(@unidades.div_opcoes)
  @unidades.clicar(@unidades.a_ver_detalhes[0])
end

Então('validar as informacoes exibidas') do
  expect(@unidades.div_horario_funcionamento.text.downcase).to have_text(MASSA['horario_atendimento'])
  expect(@unidades.pegar_texto(@unidades.h1_texto_unidades)).to eql(MASSA['localidade'])
end
