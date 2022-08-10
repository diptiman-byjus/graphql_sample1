module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me

    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end

    field :test_field_new, String, null: false,
      description: "An example field added by the generator"
    def test_field_new
      "Hello dp16"
    end

    field :posts, [Types::PostType], null: false do
      description "Query that selects all posts"
    end

    field :postsCount, Integer, null:false do
      description "Query that returns the total postcounts"
    end

    def posts
      return Post.all
    end
    def postsCount
      return Post.count
    end

  end
end
