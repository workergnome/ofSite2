module I18nHelpers
  def language_home(locale=I18n.locale.to_s)
   "#{language_root(locale)}index.html"
  end

  def language_root(locale)
     "/#{locale == "en" ? "" : (locale + "/")}"
  end

  def translated_url(locale)
     # Assuming /:locale/page.html
     page_name = @page_id.split("/", 2).last.sub(/\..*$/, '')
     untranslated_path = t(:paths).index(page_name) || page_name

     begin
       translated = I18n.translate!("paths.#{untranslated_path}", locale: locale)
     rescue I18n::MissingTranslationData
       translated = untranslated_path
     end

     "#{language_root(locale)}#{translated}.html"
   end

  def other_langs
   langs - [I18n.locale]
  end


end
