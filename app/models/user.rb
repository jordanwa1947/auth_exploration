class User < ApplicationRecord
  
  def self.authenticate(email, password)
    if email and password correspond to a valid user, return that user
    otherwise, return nil
  end

end
