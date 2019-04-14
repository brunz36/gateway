class Types::NotableUnion < Types::BaseUnion
  possible_types Types::Person

  def self.resolve_type(object, context)
    case object
    when Person then Types::Person
    end
  end
end
