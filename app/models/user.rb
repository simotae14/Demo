class User < ActiveRecord::Base
  attr_accessible :email, :name
  # DEFINISCO IL FATTO CHE UN USER PUO' AVERE + MICROPOSTS
  has_many :microposts
end
