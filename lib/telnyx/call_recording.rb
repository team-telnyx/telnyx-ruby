# frozen_string_literal: true

module Telnyx
  class CallRecording < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "recording".freeze
  end
end
