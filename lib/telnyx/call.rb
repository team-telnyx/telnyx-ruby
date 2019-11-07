# frozen_string_literal: true

module Telnyx
  class Call < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource

    OBJECT_NAME = "call".freeze

    attr_accessor :call_hook_list

    @instances = []

    def initialize(*args, **opts)
      super
      @call_hook_list = []
      @hook_handlers = {}
      @default_hook_handler = nil
      @global_hook_handler = nil
      self.class.instances.unshift self
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

    ACTIONS = %w[reject answer hangup bridge speak fork_start fork_stop
                 gather_using_audio gather_using_speak playback_start
                 playback_stop record_start record_stop send_dtmf transfer].freeze

    ACTIONS.each do |action|
      nested_resource_class_methods action,
                                    path: ["actions", action],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    def process_hook(event)
      @call_hook_list << event
      self.id ||= event.payload["call_control_id"]
      handler = @hook_handlers[event.event_type]
      if handler
        handler.call(event)
      elsif @default_hook_handler
        @default_hook_handler.call(event)
      end
      @global_hook_handler.call(event) if @global_hook_handler
    end

    def on_hook(event_type, &block)
      @hook_handlers[event_type.to_s] = block
    end

    def on_uncaught_hook(&block)
      @default_hook_handler = block
    end

    def on_any_hook(&block)
      @global_hook_handler = block
    end

    def last_hook
      @call_hook_list.last
    end

    def cleanup
      self.class.instances.delete self
    end

    def set_attribute(key, val)
      initialize_from({ key => val }, {}, true)
    end

    class << self
      attr_accessor :instances
      def parse_and_enqueue(event)
        enqueue(TelnyxObject.construct_from(event))
      end

      def enqueue(event)
        raise ArgumentError, "Please parse response as a TelnyxObject." unless event.is_a? TelnyxObject # Should be a Webhook
        return unless event.event_type =~ /^call+./

        @instances.compact!
        # Avoiding safe chaining for ruby 2.0 compatibility
        call = @instances.find do |c|
          (c.call_control_id == event.payload["call_control_id"] if c.respond_to? :call_control_id) ||
            (c.connection_id == event.payload["connection_id"] if c.respond_to? :connection_id)
        end
        call.process_hook(event) if call
      end

      def on_inbound
        @inbound
      end

      def create(**args)
        obj = super
        obj.set_attribute(:connection_id, args[:connection_id]) if args[:connection_id]
      end
    end
  end
end
