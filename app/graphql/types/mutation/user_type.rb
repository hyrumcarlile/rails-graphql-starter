Types::Mutation::UserType = GraphQL::ObjectType.define do
  field :createUser, Models::Output::UserOutput do
    description "An endpoint to create a user."
    argument :user, Models::Input::UserInput
    resolve ->(t, args, c) {
      user = args.to_h["user"]

      if user
        user + user.transform_keys{ |key| key.underscore }
      end

      ::User.create(user)
    }
  end

  field :deleteUser, Models::Output::UserOutput do
    description "An endpoint to delete a user."
    argument :id, !types.Int
    resolve ->(t, args, c) {
      ::User.find(args.id).destroy()
    }
  end
end