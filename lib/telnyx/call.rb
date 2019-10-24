# frozen_string_literal: true

module Telnyx
  class Call < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource

    attr_accessor :call_event_list
    @instances = []

    def initialize(*args, **opts)
      super
      @call_event_list = []
      @hook_handlers = {}
      @default_event_handler = nil
      @global_event_handler = nil
      self.class.instances << self
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
                 playback_stop record_start record_stop send_dtmf transfer].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: ["actions", action],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "call".freeze

    def process_event(event)
      @call_event_list << event
      handler = @hook_handlers[event.event_type]
      if handler
        handler.call(event)
      elsif @default_event_handler
        @default_event_handler.call(event)
      end
      @global_event_handler.call(event) if @global_event_handler
    end

    def on_event(event_type, &block)
      @hook_handlers[event_type] = block
    end

    def on_uncaught_event(&block)
      @default_event_handler = block
    end

    def on_any_event(&block)
      @global_event_handler = block
    end

    def last_event
      @call_event_list.last
    end

    class << self
      attr_accessor :instances
      def parse_and_enqueue(event)
        enqueue(TelnyxObject.construct_from(JSON.parse(event)["data"]))
      end

      def enqueue(event)
        raise ArgumentError, "Please parse response as a TelnyxObject. Maybe you want to use #parse_and_enqueue?" unless event.is_a? TelnyxObject
        return unless event.event_type =~ /^call\.+./

        call_id = event.payload.call_control_id
        call = @instances.find { |c| c.id == call_id }
        call.process_event(event) if call # Old syntax for 2.0 compatibility
      end
    end
  end
end
