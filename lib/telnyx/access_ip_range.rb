# frozen_string_literal: true

module Telnyx
    class AccessIPRange < APIResource
      include APIOperations::Delete
      include APIOperations::Save
      extend APIOperations::List
      extend APIOperations::Create
  
      OBJECT_NAME = "access_ip_range".freeze
    end
  end
  