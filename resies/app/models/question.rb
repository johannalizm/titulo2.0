class Question < ApplicationRecord
  has_many :alternativas,  dependent: :destroy
  accepts_nested_attributes_for :alternativas,  allow_destroy: true
  belongs_to :subcat
end
