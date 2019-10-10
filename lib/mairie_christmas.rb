require 'rubygems'
require 'nokogiri'
require 'open-uri'



def get_townhall_url
    townhall_url = []
    page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
    page.xpath('//*[@class="lientxt"]/@href').each do |node|
        townhall_url << node.text
    end
    print townhall_url
    return townhall_url
end


def get_townhall_email(townhall_url)
    townhall_email = []
    page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com" + "townhall_url")
    page.xpath('//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
    puts node.text
    end
end

=begin
def tableau(name_crypto, value_crypto)
        result = []
        value_crypto.size.times do |i|
        result << {name_crypto [i] => value_crypto [i]}
        end
    print result
    return result
end

tableau(name_crypto, value_crypto)
=end

get_townhall_url
get_townhall_email(townhall_url)