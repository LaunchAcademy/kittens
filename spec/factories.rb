FactoryGirl.define do
  factory :kitten do
    sequence(:name) { |n| "Kitten #{n}" }
    image_url "http://hd.wallpaperswide.com/thumbs/kittens-t2.jpg"
  end
end
