class Pago < ActiveRecord::Base
  belongs_to :alumno
  validates :monto, numericality:true
end

