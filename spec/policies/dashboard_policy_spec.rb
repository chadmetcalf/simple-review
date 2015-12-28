RSpec.describe DashboardPolicy do
  let(:user) { User.new }
  let(:user)  { NullUser.new('guest') }

  subject { described_class }

  permissions :index? do
    it 'grants access to users' do
      expect(subject).to permit(user)
    end

    it 'restricts access to non-users' do
      expect(subject).to_not permit(user)
    end
  end
end
