# frozen_string_literal: true

module Telnyx
  class FaxApplication < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "fax_application".freeze
  end
end
