  class UnidadesPage < SitePrism::Page

    #Foi priorizado a ordem de: Id > class > selector modificado > xpath modificado (Deixando somente o necessario de ambos para evitar que fique muito grande o elemento)
    element :div_facilidades, '#checkoox-select-facilities'
    element :h1_texto_unidades, "h1[class*='lomAMa']"
    element :div_opcoes, "div.checkbox-selectcomponentstyle__CheckboxSelectWrapperStyled-sc-7ktrvg-0.ijWekg > div.animationcomponentstyle__ForcedFade-sc-7lsrx1-1.ebkWHA > div > div:nth-child(3)"
    element :div_horario_funcionamento, 'div.sc-bwzfXH.gridcomponent__RowStyled-sc-8zg10d-1.dZjFxI > div.sc-htpNat.gridcomponent__ColStyled-sc-8zg10d-2.bmAjeB > div:nth-child(4)'
    elements :a_ver_detalhes, "a[id*='map-2']"

    #metodo para clicar no elemento na tela.
    def clicar(element)
      element.click
    end

    #metodo para pegar o texto do elemento na tela.
    def pegar_texto(element)
      element.text
    end

end
