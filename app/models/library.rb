class Library < ApplicationRecord
    has_many :books
    has_many :users

    validates :user_id, presence: true
    validates :book_id, presence: true
end
