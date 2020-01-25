class Employee < ApplicationRecord
  has_many :contrats
  has_many :contratcdds
  belongs_to :user

def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      enrollment_hash = row.to_hash # exclude the price field
      enrollment = self.where(id: enrollment_hash["id"])

      if enrollment.present?
        enrollment.first.update_attributes(enrollment_hash)
      else
        self.create!(enrollment_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # e


  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |employee|
        csv << employee.attributes.values_at(*column_names)
      end
    end
  end


end
