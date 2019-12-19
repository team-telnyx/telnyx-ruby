# frozen_string_literal: true

module Telnyx
  class Portout < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "portout".freeze
  end
end
