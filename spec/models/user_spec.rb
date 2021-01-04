require 'rails_helper'

RSpec.describe User, type: :model do
  let(:subject) do
    described_class.new(
      username: 'user_example',
      password: 'password'
    )
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:username) }

    it 'is valid with valid attribute' do
      expect(subject).to be_valid
    end

    it 'The name of the user should exist' do
      subject.username = ''
      expect(subject).not_to be_valid
    end
  end

  describe 'Associations', type: :model do
    it { is_expected.to have_many(:articles) }
    it { is_expected.to have_many(:votes) }
  end
end
