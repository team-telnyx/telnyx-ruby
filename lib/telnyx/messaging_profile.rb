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
                                  operations: %i[list]
    nested_resource_class_methods :sender_id,
                                  operations: %i[list]
    nested_resource_class_methods :short_code,
                                  operations: %i[list]

    def phone_numbers(params = {}, opts = {})
      self.class.list_phone_numbers(id, params, opts)
    end

    def sender_ids(params = {}, opts = {})
      self.class.list_sender_ids(id, params, opts)
    end

    def short_codes(params = {}, opts = {})
      self.class.list_short_codes(id, params, opts)
    end
  end
end
