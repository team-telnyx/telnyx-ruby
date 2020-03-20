# frozen_string_literal: true

module Telnyx
  class Address < APIResource
    include APIOperations::Delete
    extend APIOperations::List
    extend APIOperations::Create

    OBJECT_NAME = "address".freeze
    RESOURCE_PATH = "addresses".freeze
  end
end
