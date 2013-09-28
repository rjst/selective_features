class Feature < ActiveRecord::Base
  scope :active, :conditions => {:active => true}  

  validates_uniqueness_of :name

  attr_accessible :name, :description, :active

  def to_s
    self.name
  end

end
