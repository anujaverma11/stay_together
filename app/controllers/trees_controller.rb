class TreesController < ApplicationController
  def index
  end

  def data
    render json: get_user_data(User.first)
  end


  def get_user_data(user)
    data = {}
    data['name'] = user.first_name
    data['parent'] = user.parent_id
    data['children'] = user.children.map do |child|
      get_user_data(child)
    end
    data
  end



end
