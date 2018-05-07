require File.join(Rails.root, "app", "models", "Servicios.rb")

class ServiciosController < ApplicationController
  def registrar
  end

  def registrar_post
  @CboTipoServ = params[:cboTipo_serv]
  @DescServ = params[:desc_serv]
  @TarifServ = params[:tarif_est]

  @mensaje = 'El campo esta vacío'

  Rails.logger.debug("-------> " + @CboTipoServ)
  Rails.logger.debug("-------> " + @DescServ)
  Rails.logger.debug("-------> " + @TarifServ)

  @valServ = Servicios.find_by_sql("select * from ServiciosAd where TipoServ = '"+ @CboTipoServ +"'")  
	if @valServ.count == 0

  	reg =  Servicios.new(:TipoServ => @CboTipoServ, :DescServ => @DescServ, :Tarifa => @TarifServ)
  	reg.save

  			@mensaje = 'El Servicio se ha registrado correctamente' 

	else

			@mensaje = 'El Servicio ya existe'

	end

		Rails.logger.debug("--------------> " + @mensaje)

  	render "registrar"
  end


  def buscar
  end
end
