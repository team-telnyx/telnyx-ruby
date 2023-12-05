# frozen_string_literal: true

module Telnyx
  class RequirementType < APIResource
    extend APIOperations::List
    OBJECT_NAME = "requirement_type".freeze
  end
end
