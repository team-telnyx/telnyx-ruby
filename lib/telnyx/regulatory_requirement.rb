# frozen_string_literal: true

module Telnyx
  class RegulatoryRequirement < APIResource
    extend APIOperations::List

    OBJECT_NAME = "regulatory_requirement".freeze
  end
end
