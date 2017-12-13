class ProfesoresController < ApplicationController
	before_action :authenticate_usuario!	, only:[:editar,:actualizar, :eliminar, :crear , :nuevo]
	before_action :set_profesor, only: [:mostrar, :editar, :actualizar, :eliminar]

	def index
		@profesores = Profesor.all
	end

	def mostrar
	end

	def nuevo
		@profesor = Profesor.new
	end

	def editar
	end

	def crear
		@profesor = Profesor.new(profesor_params)
		respond_to do |format|
			if @profesor.save
				format.html { redirect_to @profesor, notice: 'Profesor registrado con éxito' }
			else
				format.html { render :nuevo }
			end
		end
	end

	def actualizar
		respond_to do |format|
			if @profesor.update(profesor_params)
				format.html { redirect_to @profesor, notice: 'Profesor actualizado con éxito' }
			else
				format.html { render :editar }
			end
		end
	end

	def eliminar
		@profesor.destroy
		respond_to do |format|
			format.html { redirect_to @profesor, notice: 'El profesor ha sido eliminado' }
			format.html { head :no_content }
		end
	end

	private
		def set_profesor
			@profesor = Profesor.find(params[:id])
		end

		def profesor_params
			params.require(:profesor).permit(:rut, :nombres, :apellidos, :telefono, :correo, :fecha_nacimiento, :direccion)
		end
end
