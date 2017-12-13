class AlumnosController < ApplicationController
	before_action :authenticate_usuario! , only:[:editar,:actualizar, :eliminar, :crear , :nuevo]
	before_action :set_alumno, only: [:mostrar, :editar, :actualizar, :eliminar]

	def index
		@alumnos = Alumno.all
	end

	def mostrar
	end

	def nuevo
		@alumno = Alumno.new
	end

	def editar
	end

	def crear
		@alumno = Alumno.new(alumno_params)
		respond_to do |format|
			if @alumno.save
				format.html { redirect_to @alumno, notice: 'Alumno registrado con éxito' }
			else
				format.html { render :nuevo }
			end
		end
	end

	def actualizar
		respond_to do |format|
			if @alumno.update(alumno_params)
				format.html { redirect_to @alumno, notice: 'Alumno actualizado con éxito' }
			else
				format.html { render :editar }
			end
		end
	end

	def eliminar
		@alumno.destroy
		respond_to do |format|
			format.html { redirect_to @alumno, notice: 'El alumno ha sido eliminado' }
			format.html { head :no_content }
		end
	end

	private
		def set_alumno
			@alumno = Alumno.find(params[:id])
		end

		def alumno_params
			params.require(:alumno).permit(:rut, :nombres, :apellidos, :telefono, :correo, :fecha_nacimiento, :direccion, :clasificacion_vocal, :estado_pago)
		end
end

