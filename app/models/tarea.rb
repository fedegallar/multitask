class Tarea < ApplicationRecord
  belongs_to :materium
  belongs_to :estado
  has_many :comments
end
