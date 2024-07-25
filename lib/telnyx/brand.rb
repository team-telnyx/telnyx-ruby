# frozen_string_literal: true

module Telnyx
  class Brand < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    extend APIOperations::NestedResource
    include APIOperations::Delete
    include APIOperations::Save

    def self.resource_url(inner_id = nil)
      path_prefix = "/10dlc"
      object_path = "brand"

      inner_id.nil? ? "#{path_prefix}/#{object_path}" : "#{path_prefix}/#{object_path}/#{CGI.escape(inner_id)}"
    end

    OBJECT_NAME = "brand".freeze

    def self.retrieve(id, opts = {})
      instance = new(id, opts)
      instance.refresh
      instance
    end
  end
end
