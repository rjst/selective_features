module FeatureHelper

  def enabled_feature?(feature_name, context = nil)
    Feature.enabled?(feature_name.to_s, context)
  end
end

