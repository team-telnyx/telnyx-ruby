# frozen_string_literal: true

module Telnyx
  class GlobalIpAssignment < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "global_ip_assignment".freeze
  end
end
