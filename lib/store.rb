class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true }
    validates :annual_revenue, numericality: { greater_than_or_equal_to:  0 }
    validate  :must_have_apparel

    def must_have_apparel
        if mens_apparel == false && womens_apparel === false
          errors.add(:mens_apparel, message: "can't be both false")
          errors.add(:womens_apparel, message: "can't be both false")
        elsif mens_apparel == nil && womens_apparel === nil
          errors.add(:mens_apparel, message: "can't be both empty")
          errors.add(:womens_apparel, message: "can't be both empty")
        end
    end

end
