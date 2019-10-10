require 'rubygems'
require 'nokogiri'
require 'open-uri'

def name_crypto
    name_crypto = []
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    page.xpath('//*[@class="currency-symbol visible-xs"]').each do |node|
        name_crypto << node.text
    end
        return name_crypto
end 

def value_crypto
    value_crypto = []
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    page.xpath('//*[@class="price"]').each do |node|
        value_crypto << node.text.delete_prefix("$")
    end
    return value_crypto
end

def tableau(name_crypto, value_crypto)
        result = []
        value_crypto.size.times do |i|
        result << {name_crypto [i] => value_crypto [i]}
        end
    print result
    return result
end

tableau(name_crypto, value_crypto)
