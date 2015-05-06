module HeaderHelpers
  def sublink(name, link)
    link_to(t("header.#{name}"), link, {
      target: "_blank", 
      "data-toggle"=>"tooltip", 
      "data-placement"=>"bottom",
      title: t("header.#{name}_tooltip", default: "")
    })
  end
end