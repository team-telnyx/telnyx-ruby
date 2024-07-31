# frozen_string_literal: true

module Telnyx
  class TexmlApplication < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save
    extend APIOperations::NestedResource

    OBJECT_NAME = "texml_application".freeze
  end
end
