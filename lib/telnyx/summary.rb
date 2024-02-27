# frozen_string_literal: true

module Telnyx
  class Summary < APIResource
    extend Telnyx::APIOperations::Create

    OBJECT_NAME = "ai/summarize".freeze
  end
end
