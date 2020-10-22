class Tarea < ApplicationRecord
  belongs_to :materium
  belongs_to :estado
  belongs_to :project
  has_many :comments, :dependent => :delete_all
end