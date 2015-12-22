RSpec.describe HomePolicy do
  let(:user) { User.new }

  subject { described_class }

  permissions :index? do
    it 'grants access to anyone' do
      expect(subject).to permit
    end
  end
end
