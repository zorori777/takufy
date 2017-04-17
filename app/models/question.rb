class Question < ApplicationRecord

  # Association with user and group
  belongs_to :user
  belongs_to :group

  # Varidates
  varidates :group_id, :user_id, presence: true

end
