class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true, dependent: :destroy
  has_many  :comments, as: :commentable
  belongs_to :user

  include PublicActivity::Model
  tracked
end
