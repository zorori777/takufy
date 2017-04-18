class Answer < ApplicationRecord

  # Association with user
    belongs_to :user

  # Association with group
    belongs_to :group

  # Association with question
    belongs_to :question

end
