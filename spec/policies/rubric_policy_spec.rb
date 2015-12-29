RSpec.describe RubricPolicy do
  let(:user)  { User.new }
  let(:user)   { NullUser.new('guest') }
  let(:rubric) { Rubric.create(creator: user) }

  subject { described_class }

  permissions ".scope" do
    let(:scope) { Rubric.all }

    before(:each) do
      rubric
    end
    subject(:policy_scope) { PostPolicy::Scope.new(user, scope).resolve }

    context 'for a guest' do
      it 'hides all rubrics' do
        rubric = Rubric.create(creator: user, active: true)
        policy_scope = RubricPolicy::Scope.new(user, scope).resolve

        expect(policy_scope).not_to include(rubric)
      end
    end

    context "for an user" do
      it "hides unactive rubrics" do
        rubric = Rubric.create(creator: user, active: false)
        policy_scope = RubricPolicy::Scope.new(user, scope).resolve

        expect(policy_scope).not_to include(rubric)
      end

      it "shows active rubrics" do
        rubric = Rubric.create(creator: user, active: true)
        policy_scope = RubricPolicy::Scope.new(user, scope).resolve

        expect(policy_scope).to include(rubric)
      end
    end
  end

  permissions :show? do
    let(:scope) { Rubric.all }

    it 'requires an user' do
      expect(subject).to permit(user, rubric)
      expect(subject).not_to permit(user, rubric)
    end
  end

  permissions :create? do
    it 'requires an user' do
      expect(subject).to permit(user, rubric)
      expect(subject).to_not permit(user, rubric)
    end
  end

  permissions :update? do
    it 'requires an user' do
      expect(subject).to permit(user, rubric)
      expect(subject).to_not permit(user, rubric)
    end
  end

  permissions :destroy? do
    it 'requires an user' do
      expect(subject).to permit(user, rubric)
      expect(subject).to_not permit(user, rubric)
    end
  end
end
