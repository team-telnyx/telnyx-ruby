# frozen_string_literal: true

module Telnyx
  class Brand < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::List
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete
    extend APIOperations::NestedResource

    OBJECT_NAME = "brand".freeze
    RESOURCE_PATH = "brand".freeze
  end
end
