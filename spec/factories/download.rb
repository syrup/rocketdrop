include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :download do
    filename { fixture_file_upload('spec/rails-logo.jpg') }
    single_use "true"
  end
end

FactoryGirl.define do
  factory :wrong_download, :class => Download do
    single_use ''
  end
end
