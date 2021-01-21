require 'rails_helper'
 
describe Post do
    it 'can be created' do
        post = Post.create!(title: "My Title", description: "The Post Description")
        expect(post).to be_valid
    end

    it 'has a summary' do
        post = Post.create!(title: "My title", description: "The post description")
        expect(post.post_summary).to eq("My title - The post description")
    end

end