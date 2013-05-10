class Rsvp
  include Mongoid::Document
  field :email, type: String
  field :guests, type: Integer
  field :dietary_restrictions, type: String
  field :details, type: String
end