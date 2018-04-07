class UrlNormalizer
  class << self
    def normalized_url(url)
      has_http?(url) ? url : "http://#{url}"
    end

    def has_http?(url)
      url[0..6] == 'http://'
    end
  end
end
