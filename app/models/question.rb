class Question < ApplicationRecord

  # Association with user and group
  belongs_to :user
  belongs_to :group

end
