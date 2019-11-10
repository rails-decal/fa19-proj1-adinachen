class Pokemon < ApplicationRecord
  belongs_to :trainer, optional: true
  validates :name, presence: true
  validates_uniqueness_of :name

end
