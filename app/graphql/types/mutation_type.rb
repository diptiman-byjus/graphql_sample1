module Types
  class MutationType < Types::BaseObject
    field :create_post_mutation, mutation: Mutations::CreatePostMutation
    field :create_author_mutation, mutation: Mutations::CreateAuthorMutation
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :test_field_new, String, null: false,
      description: "An example field added by the dp16"
    def test_field
      "Hello World"
    end
    def test_field_new
      "Hello dp16"
    end
  end
end
