FactoryGirl.define do
  factory :kitten do
    sequence(:name) { |n| "Kitten #{n}" }
    image do
      Rack::Test::UploadedFile.new(
        Rails.root.join("spec/data/two-face-kitten.jpg"))
    end
  end
end
