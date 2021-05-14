class HomePage < SitePrism::Page
  
  set_url ''
  elements :a_unidades, '#button-title-desktop-header'
  
  #metodo para clicar no elemento na tela.
  def clicar(element)
    element.click
  end

end
