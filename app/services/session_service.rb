class SessionService
  def create_session(user)
    Rails.cache.write('current_session', {user: user})
  end

  def destroy_session
    Rails.cache.write('current_session', nil)
  end

  def fetch_current_session
    Rails.cache.read('current_session')
  end
end