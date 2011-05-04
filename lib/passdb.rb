require 'open-uri'
require 'nokogiri'

module Passdb
  URL = 'http://cirt.net/passwords'

  def self.search(args={})
    type, query = args.first

    if ![:vendor, :criteria].include?(type) || query.nil?
      raise ArgumentError, "Either :vendor or :criteria are required!"
    end

    url = "#{URL}?#{type}=#{query}"
    doc = Nokogiri::HTML(open(url))

    doc.xpath('/html/body/div/div[2]/div[3]/div/center/table/tr').each do |tr|
      tr.children.each do |td|
        next if (td.children.first.name == 'center') # Google Ad
        if (td.children.first.name == 'a')
          puts td.xpath('h3/b').first.content
        else
          if (td.children.first.name == 'b')
            print "#{td.children.first.content}:"
          else
            puts td.content.chomp
          end
        end
        puts
      end
    end
  end
end
