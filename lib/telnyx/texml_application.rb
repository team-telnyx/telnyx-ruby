# frozen_string_literal: true

module Telnyx
  class TexmlApplication < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::Update
    extend Telnyx::APIOperations::Retrieve
    extend Telnyx::APIOperations::Delete

    OBJECT_NAME = "texml_application".freeze
  end
end
