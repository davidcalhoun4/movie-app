class Api::StarsController < ApplicationController

  def actor_action
    @actor = Actor.take(2)
    render "stars.json.jb"
  end

end
# @actor = Actor.find_by(id: 1)