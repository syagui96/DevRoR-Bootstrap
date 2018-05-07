require File.join(Rails.root, "app", "models", "Estacionamientos.rb")

class EstacionamientosController < ApplicationController
  def registrar
  end

  def registrar_post
  	@desc_est = params[:desc_est]
  	@direc_est = params[:direc_est] 
	@telefi_est = params[:telefi_est] 
	@dim_est = params[:dim_est]
	@gmdirec_est = params[:gmdirec_est]
	@cboTipo_est = params[:cboTipo_est]
	@cboDist_est = params[:cboDist_est]
	@precio_est = params[:precio_est]
	@cboUbicacion_est = params[:cboUbicacion_est]
	@img_est = params[:img_est]

	@mensaje = 'El campo esta vacío'

  	Rails.logger.debug("-------> " + @desc_est)
  	Rails.logger.debug("-------> " + @direc_est)
	Rails.logger.debug("-------> " + @telefi_est.to_s)
	Rails.logger.debug("-------> " + @dim_est.to_s)
	Rails.logger.debug("-------> " + @gmdirec_est)
	Rails.logger.debug("-------> " + @cboTipo_est)
	Rails.logger.debug("-------> " + @cboDist_est)
	Rails.logger.debug("-------> " + @precio_est.to_s)
	Rails.logger.debug("-------> " + @cboUbicacion_est)
	Rails.logger.debug("-------> " + @img_est.to_s)

	@ValidarEst = Estacionamientos.find_by_sql("select * from Estacionamientos where DescrpEstac = '" + @desc_est + "'")  
	if @ValidarEst.count == 0

  	reg =  Estacionamientos.new(:DescrpEstac => @desc_est, :DirecEstac => @direc_est, :TelefEstac => @telefi_est, :DimenEstac => @dim_est, 
				:DirecGMEstac => @gmdirec_est, :TipoEst => @cboTipo_est, :DistEstac => @cboDist_est, :PrecxHorEstac => @precio_est,
				:UbicEstac => @cboUbicacion_est, :FotoEstac => @img_est)
  	reg.save

  			@mensaje = 'El estacionamiento se ha registrado correctamente' 

	else

			@mensaje = 'El estacionamiento ya existe'

	end

		Rails.logger.debug("--------------> " + @mensaje)

  	render "registrar"
  	
  end

  def buscar
  end

  def buscar_get
  	@cboTipo_est = params[:cboTipo_estb]
	@cboDist_est = params[:cboDist_estb]
	@cboUbicacion_est = params[:cboUbicacion_estb]

	@estac = Estacionamientos.find_by_sql("SELECT * FROM Estacionamientos where DistEstac like '%"+@cboDist_est.to_s+"' OR TipoEst like '%"+@cboTipo_est.to_s+"'")

		if @estac.nil?
			Rails.logger.debug("---------> selecciona Distrito..")
		else
			@estac.each do |p|
		Rails.logger.debug("---------> " + @cboDist_est.to_s)
		end
	end
	render "buscar"
  end

end
