# frozen_string_literal: true

module Telnyx
    class SimCardOrder < APIResource
      extend APIOperations::List
      extend APIOperations::Create
      include APIOperations::Delete
      include APIOperations::Save
  
      OBJECT_NAME = "SimCardOrder".freeze
    end
  end
  