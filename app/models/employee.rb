class Employee < ApplicationRecord
  has_many :contrats
  has_many :contratcdds
  belongs_to :user


end
