# frozen_string_literal: true

module Telnyx
  class PhoneNumber < APIResource
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::NestedResource

    nested_resource_class_methods "voice",
                                  path: ["voice"],
                                  operations: %i[update list],
                                  instance_methods: { list: "voice" }
    nested_resource_class_methods "messaging",
                                  path: ["messaging"],
                                  operations: %i[update list retrieve],
                                  instance_methods: { list: "messaging" }
    nested_resource_class_methods "inbound_channel",
                                  path: ["inbound_channels"],
                                  operations: %i[update list]
    nested_resource_class_methods "job",
                                  path: ["jobs"],
                                  operations: %i[update list delete]

    def update_messaging(opts)
      self.class.update_messaging(id, nil, opts)
    end

    def update_voice(opts)
      self.class.update_voice(id, nil, opts)
    end

    def update_inbound_channels=(val)
      self.class.update_inbound_channel(nil, nil, channels: val)
    end

    def inbound_channels
      self.class.list_inbound_channels(nil).channels
    end

    def self.list_voice(*args, **kwargs)
      list_voices(nil, *args, **kwargs)
    end

    def self.messaging
      list_messagings(nil)
    end

    def update_jobs=(val)
      self.class.update_job(nil, nil, phone_number=value)
    end
    OBJECT_NAME = "phone_number".freeze
  end
end
