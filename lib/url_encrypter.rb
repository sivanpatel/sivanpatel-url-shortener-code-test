require 'URLcrypt'

class UrlEncrypter
  class << self

    def encrypt(url)
      URLcrypt.encode(url)
    end

    def decrypt(code)
      URLcrypt.decode(code)
    end
  end
end
