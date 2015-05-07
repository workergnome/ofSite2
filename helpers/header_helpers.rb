module HeaderHelpers

  # Create a link for the header, with toolips
  def sublink(name)
    link_to(t("external_links.#{name}", default: name), data.external_links[name], {
      target: "_blank", 
      "data-toggle"=>"tooltip", 
      "data-placement"=>"bottom",
      title: t("header.#{name}_tooltip", default: "")
    })
  end


  # Generate a key/value pair for each link in external links.
  def all_external_links
    val = data.external_links.keys.each.map do |link|
      [link.to_sym, external_link(link)]
    end
    Hash[val]
  end

  # Generate a HTML link for an external link.
  def external_link(key)
    link_text = t("external_links.#{key}", default: key)
    "<a href='#{data.external_links[key]}' target='_blank' class='external_link'>#{link_text}</a>"
  end
end