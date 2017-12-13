class Curso < ActiveRecord::Base
  belongs_to :profesor
  has_many :alumnos
  validates :nombre, uniqueness: true, presence: { message: "Debe escribir el nombre del curso"}
  validates :sala, numericality: true
end

