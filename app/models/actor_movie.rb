class ActorMovie < ApplicationRecord
  belongs_to :actor_id
  belongs_to :movie_id
end
