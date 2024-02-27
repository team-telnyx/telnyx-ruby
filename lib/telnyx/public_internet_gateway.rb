# frozen_string_literal: true

module Telnyx
  class PublicInternetGateway < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete

    OBJECT_NAME = "public_internet_gateway".freeze
  end
end
