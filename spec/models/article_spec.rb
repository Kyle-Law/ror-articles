require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:text) }
    it { is_expected.to validate_presence_of(:category_id) }
  end

  describe 'associations' do
    it { should have_many :votes }
    it { should belong_to :creator }
    it { should belong_to :category }
  end
end
