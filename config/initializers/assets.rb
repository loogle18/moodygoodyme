Moodygoodyme::Application.configure do
  config.assets.version = '1.0'
  config.assets.precompile << /\.(?:svg|woff|ttf)$/
end
