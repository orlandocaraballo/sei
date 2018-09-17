require_relative "models"

user = User.first
p user.posts.first.title_and_content

order = Order.first
p order.products

# SELECT * FROM users WHERE name = "orlando";
# first_user = User.first
# p user.profile

# first_profile = Profile.first
# p first_profile.user

# user.update(
#   username: "reynaldo",
#   password: "dskljflksdj"
# )

# user.username = "reynaldo"
# user.password = "some kinda password"
# user.save

# users.each do |user|
#   p user
# end