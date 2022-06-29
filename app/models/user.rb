# frozen_string_literal: true

class User < ActiveRecord
  MAX_NAME_LENGTH = 255
  validates :title, presence: true, length: { maximum: MAX_NAME_LENGTH }
end
