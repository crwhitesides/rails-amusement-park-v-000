class User < ActiveRecord::Base
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides

  def mood
    self.nausea > self.happiness ? "sad" : "happy"
  end

  # This method is unnecesssary since we can simply call `@user.admin`
  # because `admin` is a User attribute.
  def admin?
    self.admin == true
  end

end
