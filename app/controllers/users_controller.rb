class UsersController < ApplicationController

  include ResourcefulController
  include AuthorizableController

  private

  def permitted_params
    [:first_name, :last_name, :email, :password, :password_confirmation]
  end

end