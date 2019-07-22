class Feature
  include Dynamoid::Document

  table name: :flipper_features, key: :user_id, read_capacity: 5, write_capacity: 5
end
