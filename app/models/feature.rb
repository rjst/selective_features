class Feature < ActiveRecord::Base
  scope :active, :conditions => {:active => true}  

  validates_uniqueness_of :name

  attr_accessible :name, :description, :constraints, :active
  
  def self.enabled?(name, context = nil)
    feature = Feature.find_by_name(name.to_s)
    logger.warn "Feature #{feature} does not exist" if feature.blank?
    feature.present? and feature.enabled?(context)
  end
  

  # TODO - move out
  # Check if this feature is enabled
  # For a feature to be enabled, it must be active, and if a context is given, it must also evaluate to true
  # A context is a callable object which is passed the feature's contraints  (#, and the feature itself ???)
  def enabled?(context = nil)
    
    # if a FB login is specified, make sure it's valid. if not specified, it's valid.
    fb_login_checker = lambda {|logged_in_fb_id, allowed_fb_id|
      ( allowed_fb_id.empty? || allowed_fb_id.include?(logged_in_fb_id) )
    }
    
    
    self.active? and fb_login_checker.call(context, constraints.split(','))
  end
  
  def to_s
    self.name
  end

end
