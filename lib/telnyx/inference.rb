# frozen_string_literal: true

module Telnyx
  class Inference < APIResource
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "ai/generate".freeze
  end
end
