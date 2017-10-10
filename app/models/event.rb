class Event < ApplicationRecord
  before_validation :capitalize_name

  validates_presence_of :name, :date

  def capitalize_name
    self.name = self.name.titleize
  end
end
