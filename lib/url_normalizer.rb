class UrlNormalizer

  def self.normalized_url(url)
    has_http?(url) ? url : "http://#{url}"
  end

  def self.has_http?(url)
    url[0..6] == 'http://'
  end
end
