# frozen_string_literal: true

module Telnyx
    class ManagedAccount < APIResource
      extend Telnyx::APIOperations::List
      extend Telnyx::APIOperations::Create
      include Telnyx::APIOperations::Delete
      include Telnyx::APIOperations::Save
  
      OBJECT_NAME = "managed_account".freeze
    end
  end
  