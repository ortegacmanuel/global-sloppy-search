class Author < ApplicationRecord

  def full_name
    "#{first_name} #{last_name}"
  end
end
