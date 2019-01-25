require "jekyll-spark"

module Jekyll
  class ChipComponent < ComponentTag
    def template(context)

      color = @props["color"]
      label = @props["label"]

      render = %Q[
        <div class="Chip Chip_#{color}">
          #{label}
        </div>
      ]
    end
  end
end

# Register your component with Liquid
Liquid::Template.register_tag(
  "Chip", # Namespace your component
  Jekyll::ChipComponent, # Pass your newly created component class
)
