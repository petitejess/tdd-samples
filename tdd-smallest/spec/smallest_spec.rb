require_relative '../smallest'

describe 'smallest' do
    it 'it should return the smallest number in an array of numbers' do
        expect(smallest([9, 6, 14, 2, 4])).to be(2)
    end
    it 'it should return the smallest string in an array of strings' do
        expect(smallest(["lol", "ha", "hehe", "5", "roflmao"])).to eq("5")
    end
    it 'it should return the smallest value in an array of multiple numerical values' do
        expect(smallest([0, 123, 42, 0.08, -49.1, 2.12])).to be(-49.1)
    end
end