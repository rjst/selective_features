class SelectiveFeaturesConstraint
  def initialize(feature_name)
    @name = feature_name
  end
 
  def matches?(request)
    feature = Feature.find_by_name(@name.to_s)
    #logger.warning "Feature #{feature} does not exist" if feature.blank?
    feature.present? and feature.active?
  end
end

