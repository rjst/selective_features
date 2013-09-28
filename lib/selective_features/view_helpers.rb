module FeatureHelper

  def active_feature?(feature_name)
    ::Feature.active.find_by_name(feature_name.to_s).present?
  end
end

