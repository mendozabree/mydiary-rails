class User < ApplicationRecord
  has_many :entries,
           dependent: :destory,
           foreign_key: :user_id,
           class_name: 'Entry'
  validate :username, :email, :password, presence: true
end
