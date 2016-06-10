class JsonWebToken
  def self.encode(payload, expiration = 24.hours.from_now)
    payload = payload.dup
    payload['exp'] = expiration.to_i
    JWT.encode(payload, "YOURSECRETKEY")
  end

  def self.decode(token)
    JWT.decode(token, "YOURSECRETKEY")
  end
end
