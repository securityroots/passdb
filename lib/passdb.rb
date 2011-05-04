require 'open-uri'
require 'nokogiri'

require 'passdb/entry'
require 'passdb/version'

module Passdb
  URL = 'http://cirt.net/passwords'

  def self.search(args={})
    type, query = args.first

    if ![:vendor, :criteria].include?(type) || query.nil?
      raise ArgumentError, "Either :vendor or :criteria are required!"
    end

    results = []
    entry = nil
    url = "#{URL}?#{type}=#{query}"
    doc = Nokogiri::HTML(open(url))

    doc.xpath('/html/body/div/div[2]/div[3]/div/center/table/tr').each do |tr|
      next if tr.search('script').any?

      if tr.search('td').size == 1
        if entry
          results << entry
        end
        entry = Entry.new
        entry.name = tr.search('td').search('i').text
      else
        name, value = tr.search('td')
        entry.attributes[ name.search('b').text ] = value.text 
      end
    end

    if entry
      results << entry
    end

    return results
  end
end
