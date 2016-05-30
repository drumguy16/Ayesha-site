User.create(email: 'ayesha@example.com', encrypted_password: 'password')

Category.create(name: 'architecture', image_path: 'architecture.jpg', description: Faker::Hipster.paragraph)
Category.create(name: 'sculpture', image_path: 'sculpture.jpg', description: Faker::Hipster.paragraph)
Category.create(name: 'art', image_path: 'art.jpeg', description: Faker::Hipster.paragraph)
Category.create(name: 'about', image_path: 'about.jpg', description: Faker::Hipster.paragraph)

categories = Category.all

20.times {Project.create(title: Faker::Book.title,sales_pitch: Faker::Company.catch_phrase, description: Faker::Hipster.paragraph, main_image_path: Faker::Avatar.image, category_id: [1, 2, 3, 4].sample )}
40.times {Image.create(image_path: Faker::Avatar.image, title: Faker::Book.title, project_id: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].sample)}
