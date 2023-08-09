class Book < ApplicationRecord
  belongs_to :library
  belongs_to :user, optional: true

  def availability
    if status
      "Available"
    else
      "Checked out by User ##{user_id}"
    end
  end
end
