RSpec.describe Feature do
  subject { feature }

  let(:feature) { build :feature }

  context '#name' do
    context 'should be mandatory -' do
      scenario 'nil' do
        subject.name = nil
        is_expected.to be_invalid
      end

      scenario 'empty string' do
        subject.name = ''
        is_expected.to be_invalid
      end

      scenario 'space' do
        subject.name = ' '
        is_expected.to be_invalid
      end
    end

    context 'max length is 128 chars -' do
      scenario '128 chars' do
        subject.name = 'a' * 128
        is_expected.to be_valid
      end

      scenario '129 chars' do
        subject.name = 'a' * 129
        is_expected.to be_invalid
      end
    end
  end

  context '#owner' do
    context 'max length is 128 chars -' do
      scenario '128 chars' do
        subject.owner = 'a' * 128
        is_expected.to be_valid
      end

      scenario '129 chars' do
        subject.owner = 'a' * 129
        is_expected.to be_invalid
      end
    end
    end

  context '#git_url' do
    context 'max length is 128 chars -' do
      scenario '128 chars' do
        subject.git_url = 'a' * 128
        is_expected.to be_valid
      end

      scenario '129 chars' do
        subject.git_url = 'a' * 129
        is_expected.to be_invalid
      end
    end
  end
end
