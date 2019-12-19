# frozen_string_literal: true

module Telnyx
  class NumberOrderDocument < APIResource
    extend APIOperations::Create
    extend APIOperations::List
    include APIOperations::Save

    OBJECT_NAME = "number_order_document".freeze
  end
end
