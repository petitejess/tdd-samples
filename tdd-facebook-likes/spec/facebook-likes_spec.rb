require_relative '../facebook-likes'

# Test cases:
# 1. Make sure that the method is defined
# 2. Empty array returns no one likes this
# 3. if single user likes the post must return single user name like this
# 4. if two users like the post must return 2 users like this, with last user name first
# 5. if more than two users like the post, must receive 2 users and the remaining user count likes this
# 6. Return value is always a string

describe 'it should test for facebook likes on a post' do
    it 'check if facebook_likes is defined' do
        expect(defined? facebook_likes).to eql("method")
    end

    it 'has correct grammar for no one liking it' do
        actual = facebook_likes([])
        expect(actual).to eq("No one likes this")
    end

    it 'has correct grammar for one person liking it' do
        actual = facebook_likes(["Alex"])
        expect(actual).to eq("Alex likes this")
    end

    it 'has correct grammar for two persons liking it' do
        actual = facebook_likes(["Alex", "Nandini"])
        expect(actual).to eq("Nandini and Alex like this")
    end

    it 'has correct grammar for more than 2 persons liking it' do
        actual = facebook_likes(["Alex", "Nandini", "Rory", "Ana", "Malan"])
        expect(actual).to eq("Malan, Ana and 3 others like this")
    end

    it 'return value always a string' do
        actual = facebook_likes(["Alex", "Nandini", "Rory", "Ana", "Malan"])
        expect(actual.class).to eq(String)
    end
end