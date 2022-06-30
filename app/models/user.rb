# frozen_string_literal: true

class User < ActiveRecord
  has_many :assigned_tasks, foreign_key: :assigned_user_id, class_name: "Task"

  MAX_NAME_LENGTH = 255
  validates :title, presence: true, length: { maximum: MAX_NAME_LENGTH }
end
