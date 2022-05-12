class Client < ApplicationRecord
    has_many :client_boards
    has_many :boards, through: :client_boards
    has_secure_password
    attr_accessor :password_confirmation
  

end
