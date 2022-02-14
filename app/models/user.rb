class User < ApplicationRecord
    has_many :books

    validates :username, presence: true
end
