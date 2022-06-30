# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    users = User.select(:id, :name)
    puts users
    render status: :ok, json: { users: users }
  end
end
