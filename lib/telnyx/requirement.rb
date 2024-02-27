# frozen_string_literal: true

module Telnyx
  class Requirement < APIResource
    extend APIOperations::List
    OBJECT_NAME = "requirement".freeze
  end
end
