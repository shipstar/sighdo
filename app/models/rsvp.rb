class Rsvp
  include Mongoid::Document
  field :email, type: String
  field :guests, type: Integer
  field :friday, type: Boolean, default: false
  field :saturday, type: Boolean, default: false
  field :sunday, type: Boolean, default: false
  field :casa_wernley, type: Boolean, default: false

  def attending
    return 'All' if friday && saturday && sunday
    return 'None' unless friday || saturday || sunday

    ret = []
    ret << 'Friday' if friday
    ret << 'Saturday' if saturday
    ret << 'Sunday' if sunday
    ret.join(', ')
  end
end