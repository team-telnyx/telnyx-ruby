# frozen_string_literal: true

module Telnyx
    class AccessIPAddress < APIResource
      include APIOperations::Delete
      include APIOperations::Save
      extend APIOperations::List
      extend APIOperations::Create
  
      OBJECT_NAME = "access_ip_address".freeze
      RESOURCE_PATH = "access_ip_addresses".freeze
    end
  end
  