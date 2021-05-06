RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'should have a valid name' do
      user = User.new(email: 'user@example.com', password: 'password').save
      expect(user).to eq(false)
    end

    it 'should have a vild email' do
      user = User.new(name: 'shaher', password: 'password').save
      expect(user).to eq(false)
    end

    it 'should save the user successfully' do
      user = User.new(name: 'shaher', email: 'user@example.com', password: 'password').save
      expect(user).to eq(true)
    end
  end
end