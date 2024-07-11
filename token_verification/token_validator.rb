class TokenValidator
  def transform(str)
    str.gsub('-', '').gsub('!', '/').gsub('$', '+')
  end

  def plausible?(str)
    truncated_bytes = transform(str)[0, 15].bytes
    truncated_bytes.reduce(0) { |acc, byte| acc ^ byte }
  end
end
