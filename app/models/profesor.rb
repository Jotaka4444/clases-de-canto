class Profesor < ActiveRecord::Base
	self.table_name = 'profesores'
	has_many :sueldos
	has_many :cursos
	validates :rut, rut: true
	validates_format_of :nombres, :with => /\A[A-Z a-z á é í ó ú ñ]+\z/, :message => "invalidos"
	validates :nombres, presence: {:message => 'no puede quedar vacío'}, length:{in: 3..20, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates_format_of :apellidos, :with => /\A[A-Z a-z á é í ó ú ñ]+\z/, :message => "invalidos"
	validates :apellidos, presence: {:message => 'no puede quedar vacío'}, length:{in: 3..20, too_short: "demasiado corto", too_long: "demasiado largo"}
	validates_format_of :telefono, :with => /\A[9 22]+[0-9]+\z/, :message => "invalido"
	validates :telefono, numericality: {:message => 'deben ser números'}
	validates :telefono, length: {in: 9..9, too_short: "demasiado corto (Para número de casa anteponer el 22 y para celular el 9)", too_long: "demasiado largo (Para número de casa anteponer el 22 y para celular el 9)"}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :correo, format: { :with => VALID_EMAIL_REGEX , message: "con formato invalido" }
  	validates :correo, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	validates :correo, presence: {:message => 'no puede quedar vacío'}
	validates_format_of :direccion, :with => /\A[A-Z a-z á é í ó ú ñ]+[ ]+[#]+[0-9]+\z/, :message => "invalida (Ejemplo: Dirección #123)"
	validates :direccion, presence: {:message => 'no puede quedar vacío'}
	validates :direccion, length: {in: 6..50, too_short: "demasiada corta", too_long: "demasiada larga"}
end

