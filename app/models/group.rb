class Group < ApplicationRecord

#association with user
has_many :users

#association with question
has_many :questions, ->{ order("created_at DESC")}

#Association with answers
has_many :answers

end
