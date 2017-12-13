class SueldosController < ApplicationController
before_action :authenticate_usuario! , only:[:editar,:update, :eliminar, :crear , :nuevo]
	def index
		@sueldos = Sueldo.all
	end

	def editar
		@sueldo = Sueldo.find(params[:id])



	end

	def eliminar
		@sueldo = Sueldo.find(params[:id])
		@sueldo.destroy
		redirect_to sueldos_url


	end

	def show
		@sueldo = Sueldo.find(params[:id])
	end

	def nuevo
		@sueldo =Sueldo.new
	end
	def crear
		@sueldo =Sueldo.new(fecha: params[:sueldo][:fecha],monto: params[:sueldo][:monto])
		@sueldo.save
		redirect_to sueldos_url
	end

	def update
		params.permit!
		@sueldo =Sueldo.find(params[:id])
			if @sueldo.update_attributes(params[:sueldo])
				redirect_to :action => :show, :id => @sueldo.id
			else
				render 'editar'
			end
	end

end

