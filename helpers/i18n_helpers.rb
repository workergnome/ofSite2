module I18nHelpers
  def language_home(locale=I18n.locale.to_s)
   "#{language_root(locale)}index.html"
  end

  def language_root(locale)
     "/#{locale == "en" ? "" : (locale + "/")}"
  end
end
