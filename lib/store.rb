class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_have_either_mens_or_womens_apparel

  def must_have_either_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "or womens_apparel must be true")
    end
  end

  before_destroy :employees?

  private

  def employees?
    if employees.size != 0
      throw(:abort)
    end
  end
end
