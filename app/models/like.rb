class Like < ApplicationRecord
    validates :user_id, {presence: true}
    validates :post_id, {presence: true}

    def posts
      return Post.where(user_id: self.id)
    end
  end
  