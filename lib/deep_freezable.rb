module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
    # 配列の各要素をfreeze
    array_or_hash.each do |element|
      element.freeze
    end
    when Hash
      # hashの各要素をfreeze
      array_or_hash.each do |key,value|
        key.freeze
        value.freeze
      end
    end
    # 配列自身もfreeze
    array_or_hash.freeze
  end
end