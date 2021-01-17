class Api::StarsController < ApplicationController

  def actor_action
    @actor = Actor.find_by(id: params["id"])
    render "actor.json.jb"
  end

end