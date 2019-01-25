require "jekyll-spark"

module Jekyll
  class MaterialIconComponent < ComponentTag
    def template(context)

      icon = @props["icon"]

      render = %Q[
        <i class="MaterialIcons">#{icon}</i> 
      ]
    end
  end
end

# Register your component with Liquid
Liquid::Template.register_tag(
  "MaterialIcon", # Namespace your component
  Jekyll::MaterialIconComponent, # Pass your newly created component class
)
