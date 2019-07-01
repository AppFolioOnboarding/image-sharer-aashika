image_list = [
  'https://farm8.staticflickr.com/7568/15785724675_999435f19f_k.jpg',
  'https://thenypost.files.wordpress.com/2018/10/102318-dogs-color-determine-disesases-life.jpg?quality=90&strip=all&w=618&h=410&crop=1',
  'http://absfreepic.com/absolutely_free_photos/small_photos/cute-hamster-with-yellow-hair-2516x1667_93382.jpg',
  'https://i2.wp.com/franimals.org/wp-content/uploads/2016/04/harp-seal.jpg',
  'https://peopledotcom.files.wordpress.com/2017/08/puppies-3.jpg'
]

image_list.each do |url|
  Image.create(url: url)
end
