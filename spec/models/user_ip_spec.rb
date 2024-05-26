require 'rails_helper'

RSpec.describe UserIp, type: :model do
  subject { UserIp.new(ip: '192.12.0.123') }
  before { subject.save }

  it 'name should be present' do
    subject.ip = nil
    expect(subject).to_not be valid
  end
end
