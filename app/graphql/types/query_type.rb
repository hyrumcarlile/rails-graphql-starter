Types::QueryType = GraphQL::ObjectType.new.tap do |root_type|
  root_type.name = "Query"
  root_type.description = "The query root of this schema."
  root_type.interfaces = []
  root_type.fields = Utils::FieldCombiner.combine([
    Types::Query::UserType
  ])
end
