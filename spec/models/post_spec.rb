require 'rails_helper'
 
describe Post do

    it 'has a summary' do
        post = Post.create!(title: "My title", description: "The post description")
        expect(post.post_summary).to eq("My title - The post description")
      end
 
end

