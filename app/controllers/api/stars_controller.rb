class Api::StarsController < ApplicationController

  def actor_action
    @actor = Actor.find_by(id: 1)
    render "stars.json.jb"
  end

end
