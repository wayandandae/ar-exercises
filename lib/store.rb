class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_apparels

  def must_carry_apparels
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "can't be blank at the same time with women's")
      errors.add(:womens_apparel, "can't be blank at the same time with men's")
    end
  end
end
