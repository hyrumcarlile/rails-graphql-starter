Types::Query::UserType = GraphQL::ObjectType.define do
  field :getUser do
    type Models::Output::UserOutput
    description "An endpoint to get a user by id."
    argument :id, types.Int
    resolve ->(obj, args, ctx) {
      ::User.find_by(id: args.id)
    }
  end

  field :getUsers do
    type types[Models::Output::UserOutput]
    description "An endpoint to get all users by a user input."
    argument :user, Models::Input::UserInput
    resolve ->(obj, args, ctx) {
      user = args.to_h["user"]

      if user
        user = user.transform_keys{ |key| key.singularize.underscore }
      end

      ::User.where(user)
    }
  end
end
