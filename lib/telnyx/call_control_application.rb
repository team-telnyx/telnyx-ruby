# frozen_string_literal: true

module Telnyx
  class CallControlApplication < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "call_control_application".freeze
  end
end
