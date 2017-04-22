class Question < ApplicationRecord

  # Association with user and group
  belongs_to :user
  belongs_to :group

  # Association with answers
  has_many :answers, ->{ order ("created_at DESC") }

  # Varidates
  validates :group_id, :user_id, presence: true

  # Helper method
  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end

end
