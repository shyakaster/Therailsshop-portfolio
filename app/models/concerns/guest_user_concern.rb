module GuestUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end
  def guest_user
      # OpenStruct.new(full_name:"Guest", first_name:"Alex", last_name:"Shyaka",email:"alex@example.com")
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@email.com"
    guest
  end

end
