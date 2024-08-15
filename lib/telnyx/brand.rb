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
    def self.create(params = {}, opts = {})
      params[:entityType] ||= "PRIVATE_PROFIT"
      params[:displayName] ||= "Default Display Name"
      params[:country] ||= "US"
      params[:email] ||= "default@example.com"
      params[:vertical] ||= "COMMUNICATION"
      super(params, opts)
    end
  end
end
