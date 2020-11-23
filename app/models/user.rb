class User < ApplicationRecord
  has_many :caterings, dependent: :destroy
end
