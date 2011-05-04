require 'thor'
require 'thor/actions'

require 'passdb'

module Passdb
  class CLI < Thor
    include Thor::Actions
    def initialize(*)
      super
      Thor::Shell::Basic.new
    end

    method_option "vendor", :type => :string, :banner => 
      "Name of the vendor as especified in http://cirt.net/passwords"
    method_option "criteria", :type => :string, :banner => 
      "Free-form criteria to submit to cirt.net's password database"
    desc "search", "Search cirt.net's database for default passwords by vendor or in free from"
    def search
      opts = options.dup
      if opts["vendor"] && opts["criteria"]
        puts "You can't specify both a vendor and a free-form criteria"
        exit 1
      end

      if !(opts["vendor"] || opts["criteria"])
        puts "You need to specify either --vendor or --criteria"
        exit 1
      end
      
      if opts["vendor"]
        Passdb.search(:vendor => opts["vendor"])
      else
        Passdb.search(:criteria => opts["criteria"])
      end
    end
  end
end
