# frozen_string_literal: true

module Telnyx
  class Ip < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "ip".freeze
  end
end
