RSpec.describe DashboardPolicy do
  let(:admin) { Admin.new }
  let(:user)  { NullUser.new('guest') }

  subject { described_class }

  permissions :index? do
    it 'grants access to admins' do
      expect(subject).to permit(admin)
    end

    it 'restricts access to non-admins' do
      expect(subject).to_not permit(user)
    end
  end
end
