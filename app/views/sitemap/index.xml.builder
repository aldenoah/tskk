base_url = "https://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url{
      xml.loc("https://towingservicekk.com")
      xml.changefreq("weekly")
      xml.priority(1.0)
  }

  xml.url{
      xml.loc("https://towingservicekk.com/about")
      xml.changefreq("weekly")
      xml.priority(0.6)
  }

  xml.url{
      xml.loc("https://towingservicekk.com/privacy-policy")
      xml.changefreq("weekly")
      xml.priority(0.5)
  }

end