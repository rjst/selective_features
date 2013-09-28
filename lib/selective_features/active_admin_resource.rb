module SelectiveFeatures

  def self.register_active_admin_module

    ActiveAdmin.register ::Feature do
      menu :label => "Features"

      index do
        column "Name", :name
        column "Description", :description
        column "Active" do |feature|
          status_tag (feature.active ? "Active" : "Inactive"), (feature.active ? :ok : :warning)
        end    
        default_actions
      end

      form :html => { :enctype => "multipart/form-data" } do |f|
        f.inputs "Details" do
          f.input :name
          f.input :description
          f.input :active
        end
        f.buttons
      end
    end
    
  end

end
