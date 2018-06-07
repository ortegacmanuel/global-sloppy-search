class Author < ApplicationRecord
  searchkick

  def search_data
    {
      full_name: full_name,
      bio: bio
    }
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
