module Mutations
  class CreatePostMutation < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    field :post, Types::PostType, null: false

    
      argument :title, String, required: true do
        description "The title field is a string type and is required for the new post"
      end
      argument :body, String, required: true do
        description "The body field is a string type and is required for the new post"
      end
      argument :author, Integer, required: true do
        description "The author_id field is a necessary and integer type"
      end

      # description: "A postfield to be added"
      def resolve(title:, body:, author:)
        @post = Post.new(title: title, body: body, author: Author.find_by_id(author))
        if(@post.save)
          {
            post: @post,
            errors: []
          } else{
            post: nil,
            errors: @post.errors.full_messages
          }
        end
      end
  end
end
