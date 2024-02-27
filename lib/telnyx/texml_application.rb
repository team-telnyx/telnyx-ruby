# frozen_string_literal: true

module Telnyx
  class TexmlApplication < APIResource
    extend Telnyx::APIOperations::List

    OBJECT_NAME = "texml_application".freeze
  end
end
