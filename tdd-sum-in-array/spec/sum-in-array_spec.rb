require_relative '../sum-in-array'

# Test cases:
# 1. Method sum_array defined?
# 2. Empty array returns 0
# 3. Check if values in array are of number data type
# 4. Array with 1 value returns the value
# 5. Array with more than 1 value returns the sum

describe 'calculate sum of array' do
    it 'check if sum_array is defined' do
        expect(defined? sum_array).to eql("method")
    end

    it 'empty array should return 0' do
        actual = []
        expect(sum_array(actual)).to eq(0)
    end

    it 'array with value types other than number' do
        actual = ["a"]
        expect(sum_array(actual).class).not_to be(Integer)
    end

    it 'array with 1 value returns the value' do
        actual = [3]
        expect(sum_array(actual)).to eq(3)
    end

    it 'array with more than 1 value returns the sum' do
        actual = [10, 20, -10, 5, 0]
        expect(sum_array(actual)).to eq(25)
    end
end


# Test cases:
# 1. Method sum_two_arrays defined?
# 2. Two arrays with values should return sum of all values
# 3. Array with multiple values and array with 1 value returns the sum of all values
# 4. Array with multiple values and empty array returns the sum of all values

describe 'calculate sum of two arrays' do
    it 'check if sum_two_arrays is defined' do
        expect(defined? sum_two_arrays).to eql("method")
    end

    it 'two arrays with values should return sum of all values' do
        actual_1 = [10, 20, -10, 5, 0]
        actual_2 = [5, 3, -2]
        expect(sum_two_arrays(actual_1, actual_2)).to eq(31)
    end

    it 'array with multiple values and array with 1 value should return sum of all values' do
        actual_1 = [10, 20, -10, 5, 0]
        actual_2 = [2]
        expect(sum_two_arrays(actual_1, actual_2)).to eq(27)
    end

    it 'array with multiple values and empty array should return sum of all values' do
        actual_1 = [3, 4, -9]
        actual_2 = []
        expect(sum_two_arrays(actual_1, actual_2)).to eq(-2)
    end
end