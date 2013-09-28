module SelectiveFeatures
  class Engine < Rails::Engine
    
    config.after_initialize do 
      SelectiveFeatures.register_active_admin_module
    end 
    
    
  end
end
