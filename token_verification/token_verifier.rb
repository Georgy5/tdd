require 'base64'

class TokenVerifier
  def transform(str)
    str.gsub('-', '').gsub('!', '/').gsub('$', '+')
  end

  def plausible?(str)
    truncated_str = transform(str)
    decoded_bytes = Base64.decode64(truncated_str).bytes
    return false unless decoded_bytes.length == 15

    xor_result = decoded_bytes.reduce(0) { |acc, byte| acc ^ byte }
    xor_result == 0
  end
end
