# frozen_string_literal: true

module Telnyx
  class NumberReservation < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::NestedResource
    include Telnyx::APIOperations::Save

    nested_resource_class_methods :extend,
                                  path: %w[actions extend],
                                  operations: [:create],
                                  instance_methods: { create: "extend_number" }
    class << self
      alias extend_number create_extend
    end

    OBJECT_NAME = "number_reservation".freeze
  end
end
