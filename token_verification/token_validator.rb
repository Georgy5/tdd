class TokenValidator
  def transform(str)
    str.gsub('-', '').gsub('!', '/').gsub('$', '+')
  end
end
