# frozen_string_literal: true

module Telnyx
    class PortabilityCheck < APIResource
      extend APIOperations::Create

      OBJECT_NAME = "portability_check".freeze
    end
  end
  