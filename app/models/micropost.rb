class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id

  # DEFINISCO RELAZIONE DI APPARTENENZA, UN MICROPOST
  # APPARTIENE AD UN SOLO USER
  belongs_to :user

  # DEFINISCO VINCOLO DI LUNGHEZZA CONTENUTO, E' UN MICROPOST
  validates :content, :length => { :maximum => 140 }
end
