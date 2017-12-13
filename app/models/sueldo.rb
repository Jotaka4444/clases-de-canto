class Sueldo < ActiveRecord::Base
  belongs_to :profesor
  validates :monto, numericality:true
end

