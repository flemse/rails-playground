class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validate :max

  def max
    return false if (posts.count + 1) > 2
  end


  def self.cleanup
    Post.delete_all
    User.delete_all
  end

  def self.smash
    transaction do
      100.times do |n|
        User.create! name: "User #{n}"
      end
    end
    threads = []
    13.times do |n|
      threads << Thread.new do
        User.all.each do |u|
          u.posts.create title: 'test 123'
        end
      end
    end
    threads.each(&:join)
    puts 'done!'
  end
end
