require 'jekyll'
require 'jekyll-page-hooks'

require 'octopress-themekit/generators/stylesheets'
require 'octopress-themekit/generators/javascripts'
require 'pry-debugger'
require 'digest/md5'

module ThemeKit
  CUSTOM_DIR = "_custom"

  autoload :Asset,                'octopress-themekit/assets/asset'
  autoload :Template,             'octopress-themekit/assets/template'
  autoload :Stylesheet,           'octopress-themekit/assets/stylesheet'
  autoload :Javascript,           'octopress-themekit/assets/javascript'

  autoload :StaticFile,           'octopress-themekit/assets/static_file'
  autoload :StaticFileContent,    'octopress-themekit/assets/static_file_content'

  autoload :Plugins,              'octopress-themekit/plugins'
  autoload :Plugin,               'octopress-themekit/plugins/plugin'
  autoload :Theme,                'octopress-themekit/plugins/theme'

  autoload :EmbedTag,             'octopress-themekit/tags/embed'
  autoload :DoLayoutTag,          'octopress-themekit/tags/do_layout'
  autoload :JavascriptTag,        'octopress-themekit/tags/javascript'
  autoload :StylesheetTag,        'octopress-themekit/tags/stylesheet'
end

Liquid::Template.register_tag('embed', ThemeKit::EmbedTag)
Liquid::Template.register_tag('do_layout', ThemeKit::DoLayoutTag)
Liquid::Template.register_tag('theme_js', ThemeKit::JavascriptTag)
Liquid::Template.register_tag('theme_css', ThemeKit::StylesheetTag)
