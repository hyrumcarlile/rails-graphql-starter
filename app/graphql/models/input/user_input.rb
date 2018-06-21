Models::Input::UserInput = GraphQL::InputObjectType.define do
  name "UserInput"
  argument :id, types.Int
  argument :ids, types[types.Int]
end
