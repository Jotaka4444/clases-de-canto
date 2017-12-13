class CursosController < ApplicationController
	before_action :authenticate_usuario! , only:[:editar,:update, :eliminar, :crear , :nuevo]
	def index
		@cursos = Curso.all
	end

	def editar
		@curso = Curso.find(params[:id])

	end

	def eliminar
		@curso = Curso.find(params[:id])
		@curso.destroy
		redirect_to cursos_url


	end

	def show
		@curso = Curso.find(params[:id])
	end

	def nuevo
		@curso =Curso.new
	end
	def crear
		@curso =Curso.new(nombre: params[:curso][:nombre],
											horario: params[:curso][:horario],
											sala: params[:curso][:sala])
		@curso.save
		redirect_to cursos_url
	end

	def update
		params.permit!
		@curso =Curso.find(params[:id])
			if @curso.update_attributes(params[:curso])
				redirect_to :action => :show, :id => @curso.id
			else
				render 'editar'
			end
	end

end

