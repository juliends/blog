file = URI.open('https://meme.eq8.eu/noidea.jpg')
article = Article.new(title: 'NES', body: "A great console")
article.photos.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
# Here we write article.photo.attach(...) because we wrote has_one_attached :photo in app/models article.rb
article.save
