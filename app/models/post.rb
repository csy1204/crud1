class Post < ActiveRecord::Base
    has_many :replies
    validates :title, presence: {message: "제목은 인간적으로 좀 적지?"}
    
end
