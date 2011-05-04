require 'thor'
require 'thor/actions'

module Passdb
  class CLI < Thor
    include Thor::Actions
    def initialize(*)
      super
      Thor::Shell::Basic.new
    end

    desc "vendor", "Search cirt.net's database for default passwords in a given vendor's products"
    def vendor
    end

    desc "criteria", "Free-form search of cirt.net's credential database"
    def criteria
    end
  end
end
