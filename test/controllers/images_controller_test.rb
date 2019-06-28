require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  def test_new
    get new_image_url
    assert_response :success
  end

  def test_create__success
    assert_difference('Image.count', 1) do
      post images_url, params: { image: {
        url: 'https://farm8.staticflickr.com/7568/15785724675_999435f19f_k.jpg'
      } }
      assert_redirected_to image_path(Image.last)
    end
  end

  def test_create__fail
    assert_no_difference('Image.count') do
      post images_url, params: { image: { url: 'farm8.staticflickr.com/7568/15785724675_999435f19f_k.jpg' } }
      assert_response :unprocessable_entity
    end
  end
end
