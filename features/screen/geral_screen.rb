class Geral < Calabash::ABase

  include Calabash::Android::Operations

  def scroll_direita(quantity)
    quantity.times do
      perform_action('drag', 90, 0, 50, 50, 50)
    end
  end

  def validar_texto(*args)
    args.each do |text|
      wait_for_elements_exist(["* text:'#{text}'"], :timeout => 20)
    end
  end

  def validar_elemento(*args)
    args.each do |elements|
      wait_for_elements_exist(["* id:'#{elements}'"], :timeout => 20)
    end
  end

  def scroll_para_baixo(quantity)
    quantity.times do
      scroll("ScrollView", :down)
    end
  end

  def down_view(quantity)
    quantity.times do
      perform_action('drag', 50, 50, 60, 40, 20)
    end
  end

  def contem_texto(params)
         wait_for_elements_exist(["* {text CONTAINS '#{params}'}"], :timeout => 20)
    end




  def inicializar
    @claro = Claro.new
  end

  def menu_principal_botao
    return @claro.find_element('android.widget.ImageButton')
  end

  def validar_elementos(*args)
    args.each do |elements|
      wait_for_elements_exist(["#{elements}"], :timeout => 20)
    end
  end

end
