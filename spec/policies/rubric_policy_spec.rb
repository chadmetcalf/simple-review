RSpec.describe RubricPolicy do
  let(:admin)  { Admin.new }
  let(:user)   { NullUser.new('guest') }
  let(:rubric) { Rubric.create(created_by: admin) }

  subject { described_class }

  permissions ".scope" do
    let(:scope) { Rubric.all }

    before(:each) do
      rubric
    end
    subject(:policy_scope) { PostPolicy::Scope.new(user, scope).resolve }

    context 'for a guest' do
      it 'hides all rubrics' do
        rubric = Rubric.create(created_by: admin, active: true)
        policy_scope = RubricPolicy::Scope.new(user, scope).resolve

        expect(policy_scope).not_to include(rubric)
      end
    end

    context "for an admin" do
      it "hides unactive rubrics" do
        rubric = Rubric.create(created_by: admin, active: false)
        policy_scope = RubricPolicy::Scope.new(admin, scope).resolve

        expect(policy_scope).not_to include(rubric)
      end

      it "shows active rubrics" do
        rubric = Rubric.create(created_by: admin, active: true)
        policy_scope = RubricPolicy::Scope.new(admin, scope).resolve

        expect(policy_scope).to include(rubric)
      end
    end
  end

  permissions :show? do
    let(:scope) { Rubric.all }

    it 'requires an admin' do
      expect(subject).to permit(admin, rubric)
      expect(subject).not_to permit(user, rubric)
    end
  end

  permissions :create? do
    it 'requires an admin' do
      expect(subject).to permit(admin, rubric)
      expect(subject).to_not permit(user, rubric)
    end
  end

  permissions :update? do
    it 'requires an admin' do
      expect(subject).to permit(admin, rubric)
      expect(subject).to_not permit(user, rubric)
    end
  end

  permissions :destroy? do
    it 'requires an admin' do
      expect(subject).to permit(admin, rubric)
      expect(subject).to_not permit(user, rubric)
    end
  end
end
