Models::Output::UserOutput = GraphQL::ObjectType.define do
  name "UserOutput"
  field :id, types.Int
  field :name, types.String
  field :email, types.String
end
