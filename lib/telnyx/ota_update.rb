# frozen_string_literal: true

module Telnyx
  class OtaUpdate < APIResource
    extend APIOperations::List

    OBJECT_NAME = "ota_update".freeze
  end
end
