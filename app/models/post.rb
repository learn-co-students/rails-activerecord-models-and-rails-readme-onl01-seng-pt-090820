class Post < ActiveRecord::Base

    def change
        describe Post do
            it 'can be created' do
                post = Post.create!(title: "My title", description: "The post description")
                expect(post).to be_valid
            end

            it 'has a summary' do
                post = Post.create!(title: "My title", description: "The post description")
                expect(post.post_summary).to eq("My title - The post description")
            end

        end
    end

    def post_summary
        self.title + " - " + self.description
    end
end