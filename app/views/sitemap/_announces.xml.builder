base_url = "http://#{request.host_with_port}"

@announces.each do |announce|
  xml.url do
    xml.loc base_url+(announce_path(announce))
  end

end