class PagosController < ApplicationController
	before_action :authenticate_usuario!	, only:[:editar,:update, :eliminar, :crear , :nuevo]
	def index
		@pagos = Pago.all
	end

	def editar
		@pago = Pago.find(params[:id])

	end

	def eliminar
		@pago = Pago.find(params[:id])
		@pago.destroy
		redirect_to pagos_url


	end

	def show
		@pago = Pago.find(params[:id])
	end

	def nuevo
		@pago =Pago.new
	end
	def crear
		@pago =Pago.new(fecha: params[:pago][:fecha],monto: params[:pago][:monto])
		@pago.save
		redirect_to pagos_url
	end

	def update
		params.permit!
		@pago =Pago.find(params[:id])
			if @pago.update_attributes(params[:pago])
				redirect_to :action => :show, :id => @pago.id
			else
				render 'editar'
			end
	end

end

