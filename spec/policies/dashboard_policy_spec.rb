RSpec.describe HomePolicy do
  let(:admin) { Admin.new }

  subject { described_class }

  permissions :index? do
    it 'grants access to admins' do
      expect(subject).to permit(admin)
    end

    it 'restricts access to anyone' do
      refute(subject).to permit
    end
  end
end
