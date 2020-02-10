# frozen_string_literal: true

module Telnyx
  class IPConnection < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "ip_connection".freeze
  end
end
