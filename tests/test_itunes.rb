require 'test/unit'
require 'itunes'

ITUNES_PATH_TEST = '/Users/richardlyon/Music/Ruby-iTunes/iTunes Library.xml'
$itunes = Itunes.new ITUNES_PATH_TEST

class TestItunes < Test::Unit::TestCase

  def test_getting_tracks
    album = $itunes.albums[0]
    assert_equal("A Perfect Circle", album.artist)
    assert_equal("Thirteenth Step", album.album)
  end

  def test_setting_genre

end
