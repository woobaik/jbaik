module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = Guest.new
    guest.name = "Guest"
    guest.email = "guest@guest.net"
    guest
  end

end
