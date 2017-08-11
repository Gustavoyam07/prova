class Carro < Calabash::ABase

    

    # def faker_ano
    #   ano = Faker::Vehicle.year
    #   return ano
    # end


    def clicar_cadastrar
  	    page(Geral).validar_elemento('cadastrar')
  	    touch("* id:'cadastrar'")
     end



    def preencher_modelo(placa, modelo, valor)
      #Modelo    	
       page(Geral).validar_elemento ('modelo')
       touch("* id:'modelo'")
       keyboard_enter_text(modelo)
    

  	  #Ano
  	   page(Geral).validar_elemento('ano')
  	   query("* id:'ano'",setText:"#{2017}")    
  	   # touch("* id:'ano'")
  	   # $ano = (page(Carro).faker_ano)
      #  keyboard_enter_text($ano)
       

      #Placa  
  	   page(Geral).validar_elemento('placa')
  	   # query("* id:'placa'",setText:"#{1975}")
       #end
  	   touch("* id:'placa'")
  	   keyboard_enter_text(placa)
    

  	  #KM
  	   page(Geral).validar_elemento('km')
  	   query("* id:'km'",setText:"#{0}")
  	   hide_soft_keyboard
  

      #Valor
  	   page(Geral).validar_elemento('valor')
  	   #query("* id:'valor'",setText:"#{190000}")
  	   touch("* id:'valor'")
  	   keyboard_enter_text(valor)
  	   hide_soft_keyboard
  	end


 

    #botão cadastrar
    def btn_Cadastrar
  	   page(Geral).validar_elemento('cadastrar')
  	   touch("* id:'cadastrar'")
    end

    def voltar_home
      page(Geral).contem_texto('Carro cadastrado com sucesso')
    	press_back_button
    end
   
    def consultar_carro
      page(Geral).validar_elemento('consulta')
    	touch("* id:'consulta'")

    end

    def descer_tudo(quantity)
     quantity.times do
     scroll("* id:'listaCarros'", :down)
    end
    end

    


    def consultar_carro_cadastrado(placa)
      # binding.pry
   
     lista_carros = query("* id:'listaCarros'")
     
     while lista_carros != placa
      if lista_carros.include? placa
         touch("* id:'placa'")
      break
      else 
         page(Carro).descer_tudo(1)
         lista_carros = query("* id:'listaCarros'")
      end   
   end 
 end 



end