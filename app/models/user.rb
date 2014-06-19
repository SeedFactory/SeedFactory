class User < ActiveRecord::Base

  has_many :user_roles
  has_many :roles, through: :user_roles

  validates_presence_of :first_name, :last_name

  acts_as_authentic do |config|
    config.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end

  def name
    "#{first_name} #{last_name}"
  end

  def role_symbols
    roles.map { |r| r.name.to_sym }
  end

end
