# frozen_string_literal: true

module Telnyx
  class DetailRecord < APIResource
    extend APIOperations::List

    OBJECT_NAME = "detail_record".freeze
  end
end
