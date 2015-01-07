# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
	templateData:
    site:
      author: "The Tribe"
      description: "layers of intelligent configuration for the next generation of applications"
      keywords: "config, configuration, api, platform, cloud"
      title: "blanket-config"
      url: "http://tribesoftware.org/blanket-config"

    getTitle: ->
      if @document.title
        "#{@document.title} | #{@site.title}"
      else
        @site.title

    getDescription: ->
      @document.description or @site.description

    getKeywords: ->
      @site.keywords.concat(@document.keywords or []).join(", ")

    getAuthor: ->
      @document.author or @site.author

  environments:
    development:
      port: 9910
      templateData:
        site:
          url: "http://localhost:9910"
}

# Export the DocPad Configuration
module.exports = docpadConfig