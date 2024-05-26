require 'rails_helper'

RSpec.describe Article, type: :model do
  subject { Article.new(name: 'Bon monsieur', number_of_search: 0) }
  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be valid
  end
end
