# frozen_string_literal: true

module Telnyx
  class MessagingProfile < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource

    OBJECT_NAME = "messaging_profile".freeze

    nested_resource_class_methods :phone_number,
                                  operations: %i[list],
                                  instance_methods: { list: "phone_numbers" }
    nested_resource_class_methods :short_code,
                                  operations: %i[list],
                                  instance_methods: { list: "short_codes" }
    nested_resource_class_methods :alphanumeric_sender_id,
                                  operations: %i[list],
                                  instance_methods: { list: "alphanumeric_sender_ids" }
  end
end
