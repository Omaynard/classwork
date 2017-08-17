require 'nokogiri'
 doc = Nokogiri::XML(open('./bakery_xml.xml'))
# puts doc.xpath('//name').
# puts doc.xpath('//description).
   
 
   # doc.xpath('//calories').each do |x|

   # 	puts (x.text.to_f).class

   # end


puts doc.xpath('//food')[0].xpath('//price').text

