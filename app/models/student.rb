class Student < ApplicationRecord
	validates :name, presence: true
  validates :subject_name, presence: true

  validates :name, uniqueness: { scope: :subject_name, message: 'with this subject already exists' }
end
