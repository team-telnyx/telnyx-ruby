# frozen_string_literal: true

module Telnyx
  class FQDNConnection < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "fqdn_connection".freeze
  end
end
