# frozen_string_literal: true

module Telnyx
  class VerifiedCallsDisplayProfile < APIResource
    extend APIOperations::List
    extend APIOperations::NestedResource

    %w[verification_request].each do |action|
      nested_resource_class_methods action,
                                    path: %W[#{action}],
                                    operations: [:create],
                                    instance_methods: { create: action }
    end

    OBJECT_NAME = "verified_calls_display_profile".freeze
  end
end
