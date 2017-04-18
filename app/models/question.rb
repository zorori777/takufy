class Question < ApplicationRecord

  # Association with user and group
  belongs_to :user
  belongs_to :group

  # Association with answers
  has_many :answers

  # Varidates
  validates :group_id, :user_id, presence: true

end
