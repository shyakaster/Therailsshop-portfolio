class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image
	def self.rails
		where(subtitle: "Ruby on Rails")
	end

	scope :the_angular_items, -> {where(subtitle: "AngularJS")}

	after_initialize :set_defaults

	def set_defaults
		self.main_image ||= "http://placehold.it/600x400"
		self.thumb_image ||= "http://placehold.it/350x200"
	end
end
