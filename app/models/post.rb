class Post < ActiveRecord::Base
  belongs_to :user
  after_commit :max_two_per_user, on: :create

  def max_two_per_user
    if user.posts.count > 2
      delete
    end
  end
end
