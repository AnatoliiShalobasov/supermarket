
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative("supermarket.rb")
require_relative("book.rb")
require_relative("music_album.rb")
require_relative("film.rb")

film = Film.new("2990","15")

puts "Фильм Леон стоит #{film.show_price} руб"