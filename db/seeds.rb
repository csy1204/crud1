# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Post.create(title: '안녕하세요', content: '첫글입니다')
# Reply.create(content: '첫 리플입니다.', post_id: 1)

post = Post.new
post.title = "안녕하신가"
post.content = "진심 노답이네요"
post.save

reply = Reply.new
reply.content ="첫번째 리플!"
#reply.post_id = 1
reply.post = new_post
reply.save







