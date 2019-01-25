require "jekyll-spark"

module Jekyll
  class ActionComponent < ComponentTag
    def template(context)

      label = @props["label"]

      render = %Q[
        <div class="Action">
          action <b class="u-textColor_red">=</b> #{label}
        </div>
      ]
    end
  end
end

# Register your component with Liquid
Liquid::Template.register_tag(
  "Action", # Namespace your component
  Jekyll::ActionComponent, # Pass your newly created component class
)
