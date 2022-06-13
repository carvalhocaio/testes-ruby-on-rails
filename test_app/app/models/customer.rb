class Customer < ApplicationRecord
  def full_name
    "Mrs. #{name}"
  end
end
