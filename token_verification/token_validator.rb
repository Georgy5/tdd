class TokenValidator
  def transform(str)
    str.gsub('-', '').gsub('!', '/').gsub('$', '+')
  end

  def plausible?(str)
  end
end
