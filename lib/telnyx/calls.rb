# frozen_string_literal: true

module Telnyx
  class Calls < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource

    ACTIONS = %w[reject answer hangup bridge speak fork_start fork_stop 
    gather_using_audio gather_using_speak playback_start 
    playback_stop record_start record_stop send_dtmf transfer]
    
    ACTIONS.each do |action|
      nested_resource_class_methods action, path: ['actions', action], operations: [:create]
      define_method(action) do |params={}, opts={}|
        self.class.send("create_#{action}", call_control_id, params, opts)
      end
    end

    OBJECT_NAME = 'call'
  end
end