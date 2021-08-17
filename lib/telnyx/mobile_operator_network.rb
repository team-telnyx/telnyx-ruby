# frozen_string_literal: true

module Telnyx
  class MobileOperatorNetwork < APIResource
    extend APIOperations::List

    OBJECT_NAME = "mobile_operator_network".freeze
  end
end
