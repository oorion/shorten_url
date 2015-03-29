module ShortenUrl
  class JetFuel
    def initialize(host)
      @host = host
    end

    def shorten(url, length)
      Digest::SHA256.hexdigest(url)[0..length]
    end
  end
end
