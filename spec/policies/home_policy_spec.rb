RSpec.describe HomePolicy do
  let(:user)  { NullUser.new('guest') }

  subject { described_class }

  permissions :index? do
    it 'grants access to anyone' do
      expect(subject).to permit(user)
    end
  end
end
