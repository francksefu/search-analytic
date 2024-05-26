require 'rails_helper'

RSpec.describe Article, type: :model do
  subject { Article.new(name: 'Le bion monsieur') }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
