class TreesController < ApplicationController
  def index
  end

  def data
    render json: get_user_data(User.first)
  end


  def get_user_data(user)
    data = {}
    if(user.family_id === 162)
      data['name'] = user.first_name
      data['parent'] = user.parent_id
      data['icon'] = "http://www.aperfectworld.org/clipart/people/head03.gif"
      data['children'] = user.children.map do |child|
      get_user_data(child)
      end
    end
    data
  end

end
