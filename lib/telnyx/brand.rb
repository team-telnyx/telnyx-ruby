# frozen_string_literal: true

module Telnyx
    class Brand < APIResource
      extend APIOperations::List
      extend APIOperations::Create
      extend APIOperations::NestedResource
      include APIOperations::Delete
      include APIOperations::Save
  
      OBJECT_NAME = "10dlc/brand".freeze
    end
  end
  