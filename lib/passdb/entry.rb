
module Passdb
  class Entry
    attr_accessor :vendor, :name, :attributes
    def initialize()
      self.attributes = {}
    end
  end
end
