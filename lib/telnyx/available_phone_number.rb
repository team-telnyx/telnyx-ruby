# frozen_string_literal: true

module Telnyx
  class AvailablePhoneNumber < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::ParamWrapper
    wrap 'list', 'filter'

    OBJECT_NAME = "available_phone_number".freeze
  end
end
