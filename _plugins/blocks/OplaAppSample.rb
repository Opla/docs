require "jekyll-spark"

module Jekyll
  class OplaAppSampleComponent < ComponentBlock
    def template(context)

      title = @props["title"]
      content = @props["content"]

      render = %Q[
        <div class="OplaAppSample">
        <p class="OplaAppSample-title">##{title}</p>
          #{content}
        </div>
      ]
    end
  end
end

# Register your component with Liquid
Liquid::Template.register_tag(
  "OplaAppSample", # Namespace your component
  Jekyll::OplaAppSampleComponent, # Pass your newly created component class
)
