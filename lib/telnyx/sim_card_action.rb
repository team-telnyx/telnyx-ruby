# frozen_string_literal: true

module Telnyx
    class SimCardAction < APIResource
      extend APIOperations::List
      extend APIOperations::Create
      include APIOperations::Delete
      include APIOperations::Save
  
      OBJECT_NAME = "sim_card_actions".freeze
    end
  end
  