class ClientBoard < ApplicationRecord
  has_one_attached :video
  belongs_to :client
  belongs_to :board
end
