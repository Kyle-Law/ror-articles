require 'rails_helper'

RSpec.describe Vote, 'associations' do
  it { should belong_to :user }
  it { should belong_to :article }
end
