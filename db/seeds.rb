Category.create(name: 'architecture', image_path: 'architecture.jpg')
Category.create(name: 'sculpture', image_path: 'sculpture.jpg')
Category.create(name: 'art', image_path: 'art.jpeg')
Category.create(name: 'about', image_path: 'about.jpg')

categories = Category.all

20.times {Project.create(title: Faker::Book.title,sales_pitch: Faker::Company.catch_phrase, description: Faker::Hipster.paragraph, main_image_path: Faker::Avatar.image, category_id: [1, 2, 3, 4].sample )}

