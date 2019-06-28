require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  def test_validate_url_format__valid
    image = Image.new(url: 'https://farm8.staticflickr.com/7568/15785724675_999435f19f_k.jpg')
    assert_predicate(image, :valid?)
  end

  def test_validate_url_format__invalid
    image = Image.new(url: 'htfarm8.staticflickr.com/7568/15785724675_999435f19f_k.jpg')
    assert_not_predicate(image, :valid?)
  end
end
