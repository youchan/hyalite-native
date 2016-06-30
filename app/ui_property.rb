module Hyalite
  module UIProperty
    PROPERTIES = { style: true }
    class << self
      def include?(name)
        PROPERTIES.has_key? name
      end
    end
  end
end
