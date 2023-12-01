# frozen_string_literal: true

module Telnyx
  class Region < APIResource
    extend Telnyx::APIOperations::List

    OBJECT_NAME = "region".freeze
  end
end
