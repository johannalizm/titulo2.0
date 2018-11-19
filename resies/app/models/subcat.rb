class Subcat < ApplicationRecord
  has_many :preguntum
  belongs_to :cat
end
