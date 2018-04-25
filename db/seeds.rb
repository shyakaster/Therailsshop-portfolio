User.create!(
  email: "shyakaster@gmail.com",
  password: "beatrice",
  password_confirmation: "beatrice",
  name: "alex shyaka",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "nkusialex@gmail.com",
  password: "beatrice",
  password_confirmation: "beatrice",
  name: "alex nkusi",
)

puts "1 regular user created"

Topic.create!(title:'Coding')
# 3.times do |topic|
#   Topic.create!(
#     title: "Topic #{topic}"
#   )
# end
# 3.times do |topic|
# 	Topic.create!(
# 	title:"Topic #{topic}"
# 	)
# end
# puts "3 topics created"
# 2.times do |blog|
# 		Blog.create!(
# 		title: " Coding for social change-Kampala ruby community",
# 		body: "I have heard endless stories of companies some foreign and others not saying they can't find good developers in Uganda. They have to go somewhere else to get developers for jobs being done here. We have talented young people if well mentored can take up these positions. Our community hopes to attract enough young and old talent to learn and grow together and tremendously challenge this belief.

# Through working with kids in my community teaching them how to code, I have come to the realization that talent is not restricted to developed countries only, it's the opportunity that is missing. The community will provide the opportunity to kids as young as 11 years old to be part of this learning process.

# Social change is something that I hold dearly and  through the ruby community we will work with strategic partners to extend this opportunity to under-served areas in Kampala first and the rest of the country eventually. We shall achieve this through setting up coding camps in poorly served areas where kids may not be aware of the opportunities that are taken for granted by their well to do contemporaries
#   Enough about the language. I will try to articulate the best way I can why we are building this community and the outcomes we expect  out of this en-devour.

# As a community we hope to contribute to the wider community of the ruby language through working on open source projects especially the ones that are of an altruistic nature. We hope to learn and gain technical sophistication while we add value to the community.

# This will help us gain confidence as developers here in Africa. I have realized a tendency by developers in Uganda to feel inadequate to contribute because of a lack of self confidence. We hope to encourage our members to dare to challenge themselves more and believe in their abilities to contribute.

# Our regular meetups once a month will be greatly helpful in helping our members to network with industry heavy weights and experienced developers who will give talks both technical and of a business nature. We shall be resilient in making sure we add value to our members through learning difficult topics and making sure we fully understand the core of the language.",topic_id: Topic.last.id
# 		)
# 	end

# puts "2 blogs created"

# 5.times do |skill_set|
# 		Skill.create!(
# 		title: "My skill set #{skill_set}",
# 		percent_utilized: "20 percent utilized")
# 	end

# puts "5 skills created"

# 8.times do |portfolio_created|
# 		 Portfolio.create!(
# 		  title: "Portfolio title #{portfolio_created}",
#     	  subtitle: "Ruby on Rails",
#           body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
#           ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
#           ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
#           dolore eu fugiat nulla pariatur. Excepteur sint occaecat
#           	cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
#   		  main_image: "http://placehold.it/600x400",
#           thumb_image:"http://placehold.it/350x200")
# 	end
# 	1.times do |portfolio_created|
# 			 Portfolio.create!(
# 			  title: "Portfolio title #{portfolio_created}",
# 	    	  subtitle: "AngularJS",
# 	          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
# 	          ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
# 	          ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
# 	          dolore eu fugiat nulla pariatur. Excepteur sint occaecat
# 	          	cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
# 	  		  main_image: "http://placehold.it/600x400",
# 	          thumb_image:"http://placehold.it/350x200")
# 		end

# puts "9 portfolios created"

# 3.times do |technology|
# 	Portfolio.last.technologies.create!(
# 		name:"Technology #{technology}")
# end
# puts " 3 technologies created"
