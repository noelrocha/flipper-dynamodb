class Gate
  include Dynamoid::Document

  table name: :flipper_gates, key: :user_id, read_capacity: 5, write_capacity: 5
end
