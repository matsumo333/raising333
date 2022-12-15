class Post < ApplicationRecord
  def self.import(file)
   CSV.foreach(file.path, headers: true) do |row|
    post=find_by(id: row["id"]) || new
    post.attributes = row.to_hash.slice(*updatable_attributes)
    post.save
   end
  end

 def self.updatable_attributes
  ["content"]
 end
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}

  def user
    return User.find_by(id: self.user_id)
  end


end
