# frozen_string_literal: true

module Telnyx
  class Fax < APIResource
    extend Telnyx::APIOperations::List
    extend Telnyx::APIOperations::Create
    include Telnyx::APIOperations::Delete
    include Telnyx::APIOperations::Save

    OBJECT_NAME = "fax".freeze
    RESOURCE_PATH = "faxes".freeze
  end
end
