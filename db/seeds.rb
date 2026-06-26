# Sample content for Haaland Hub
#
# Run with: bin/rails db:seed

puts "Seeding Haaland Hub..."

posts = [
  {
    title: "Is Haaland the most complete striker in the world right now?",
    body: "The numbers speak for themselves, but I think his movement off the ball is what really separates him. Curious what everyone else thinks about his link-up play this season.",
    author_name: "City Supporter"
  },
  {
    title: "Favorite Haaland celebration?",
    body: "The meditation pose never gets old. What's your go-to moment when he scores?",
    author_name: "Nordic Fan"
  }
]

posts.each do |attrs|
  post = Post.find_or_create_by!(title: attrs[:title]) do |record|
    record.body = attrs[:body]
    record.author_name = attrs[:author_name]
  end

  if post.comments.none?
    post.comments.create!(
      body: "Hard to argue with the stats. His presence alone changes how teams defend.",
      author_name: "Tactical Analyst"
    )
  end
end

puts "Created #{Post.count} posts and #{Comment.count} comments."
puts "Add photos through the web UI at /photos/new"
