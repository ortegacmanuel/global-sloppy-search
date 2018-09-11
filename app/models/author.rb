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

  def first_name_last_i
    "#{first_name} #{last_name.first.titlecase}"
  end
end
