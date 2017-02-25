base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url{
      xml.loc("#{root_url}")
      xml.changefreq("weekly")
      xml.priority(1.0)
  }

  xml.url{
      xml.loc("#{contact_url}")
      xml.changefreq("weekly")
      xml.priority(0.5)
  }
  
end