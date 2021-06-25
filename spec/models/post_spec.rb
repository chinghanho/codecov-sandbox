require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#trimmed_title' do
    subject { post.trimmed_title }

    let(:post) { described_class.new(title: title) }

    context 'when title trailing spaces' do
      let(:title) { 'foobar ' }

      it { is_expected.to eq('foobar') }
    end
  end
end
