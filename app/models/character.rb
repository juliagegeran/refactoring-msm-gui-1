# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  def movie
    movie_id = self.movie_id
    movie_record = Movie.where(:id => movie_id).at(0)

    return movie_record   

  end

  def director
    movie_id = self.movie_id
    director_id= Movie.where(:id => movie_id).at(0).director_id
    director_record = Director.where(:id => director_id).at(0)

    return director_record
  end
end
