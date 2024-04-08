require "nokogiri"
require "open-uri"
require "json"
@doc=Nokogiri::HTML(URI.open("https://flagpedia.net/index"))
@pays=[]
@doc.css("[data-area]").each do |x|
  p "fghj"+x.text.strip
  
  begin
    pays={}
    pays["country"]=x.text.strip
    @doc2=Nokogiri::HTML(URI.open("https://flagpedia.net"+x.attributes["href"].value+"/emoji"))
    hey=@doc2.css("table td")[1].text.gsub("&amp;","&")
    pays["unicode"]=hey
    @doc3=Nokogiri::HTML(URI.open("https://flagpedia.net"+x.attributes["href"].value+"/"))
    hi=@doc3.css("table td")[12].text
    pays["phone"]=hi
    p pays
    @pays<<pays
    File.write("public/temp2.json", JSON.pretty_generate({"pays":@pays}))
  rescue
    @pays<<pays
    p pays
    
    next
  end
end

