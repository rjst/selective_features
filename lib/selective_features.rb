require 'selective_features/engine'
require 'selective_features/view_helpers'
require 'selective_features/constraints'
require 'selective_features/active_admin_resource'

ActionView::Base.send :include, FeatureHelper
