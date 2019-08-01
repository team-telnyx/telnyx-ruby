# frozen_string_literal: true

module Telnyx
  class Call < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource

    def id
      call_control_id
    end

    ACTIONS = %w[reject answer hangup bridge speak fork_start fork_stop
                 gather_using_audio gather_using_speak playback_start
                 playback_stop record_start record_stop send_dtmf transfer].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: ["actions", action],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "call".freeze
  end
end
