# frozen_string_literal: true

module Telnyx
  class Brand < APIResource
    extend Telnyx::APIOperations::Create
    extend Telnyx::APIOperations::List
    include Telnyx::APIOperations::Save
    include Telnyx::APIOperations::Delete

    OBJECT_NAME = "brand".freeze

    def self.resource_url
      "/10dlc/brands"
    end
  end
end
