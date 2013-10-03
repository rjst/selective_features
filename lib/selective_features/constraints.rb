class SelectiveFeaturesConstraint
  def initialize(feature_name, context = lambda {|request| nil})
    @name = feature_name
    @context = context
  end
 
  def matches?(request)
    Feature.enabled?(@name.to_s, @context.call(request))
  end
end

