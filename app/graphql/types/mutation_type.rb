Types::MutationType = GraphQL::ObjectType.new.tap do |root_type|
  root_type.name = "Mutation"
  root_type.description = "The mutation root of this schema."
  root_type.interfaces = []
  root_type.fields = Utils::FieldCombiner.combine([
    Types::Mutation::UserType
  ])
end
