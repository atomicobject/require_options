module RequireOptions
  def require_options(options, *required_keys)
    values = required_keys.flatten.map do |key|
      val = options[key]
      raise "#{key} required" unless options[key]
      val
    end
    values.size == 1 ? values.first : values
  end
  
  def allow_options(options, *allowed_options)
    options.keys.each do |key|
      raise "#{key} not allowed" unless allowed_options.include?(key)
    end
  end
  
  def require_at_least_one(options, *keys)
    raise "#{keys.join(' or ')} is required" unless keys.any? { |key| !options[key].nil? && !options[key].empty?}
  end
end
