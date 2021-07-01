# frozen_string_literal: true

module Telnyx
  class Call < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource

    def initialize(*args, **opts)
      super
      opts.each do |k, v|
        setter = "#{k}=".to_sym
        next unless respond_to? setter
        send(setter, v)
      end
    end

    def id
      call_control_id if defined? call_control_id
    end

    def id=(val)
      initialize_from({ call_control_id: val }, {}, true)
    end

    %w[call_leg_id call_session_id].each do |attribute|
      define_method attribute do
        send(attribute) if respond_to?(attribute)
      end
      define_method attribute + "=" do |val|
        initialize_from({ attribute.to_sym => val }, {}, true)
      end
    end

    ACTIONS = %w[reject answer hangup bridge speak fork_start fork_stop
                 gather_using_audio gather_using_speak playback_start
                 playback_stop record_start record_stop send_dtmf transfer
                 transcription_start transcription_stop record_pause
                 record_resume gather_stop refer enqueue leave_queue].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: ["actions", action],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "call".freeze
  end
end
