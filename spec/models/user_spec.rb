require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#alias_name' do
    subject { user.alias_name }

    let(:user) { described_class.new(name: name) }

    context 'when name contains spaces' do
      let(:name) { 'foo bar' }

      it { is_expected.to eq('foobar') }
    end

    context 'when name contains uppercase letters' do
      let(:name) { 'Foo Bar' }

      it { is_expected.to eq('foobar') }
    end
  end
end
