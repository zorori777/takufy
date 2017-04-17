class Question < ApplicationRecord

  # Association with user and group
  belongs_to :user
  belongs_to :group

  # Varidates
  validates :group_id, :user_id, presence: true

end
