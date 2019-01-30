require "jekyll-spark"

module Jekyll
  class EntryComponent < ComponentBlock
    def template(context)

      type = @props["type"]
      content = @props["content"]

      render = %Q[
        <div class="Entry">
          <div class="Entry-label">  
            #{type}:
          </div>
          #{content}
        </div>
      ]
    end
  end
end

# Register your component with Liquid
Liquid::Template.register_tag(
  "Entry", # Namespace your component
  Jekyll::EntryComponent, # Pass your newly created component class
)
