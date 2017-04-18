class Question < ApplicationRecord

  # Association with user and group
  belongs_to :user
  belongs_to :group

  # Association with answers
  has_many :answers, ->{ order ("created_at DESC") }

  # Varidates
  validates :group_id, :user_id, presence: true

end
