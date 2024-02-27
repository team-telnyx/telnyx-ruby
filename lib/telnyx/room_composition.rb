# frozen_string_literal: true

module Telnyx
  class RoomComposition < APIResource
    include APIOperations::Delete
    extend APIOperations::List
    extend APIOperations::Create

    OBJECT_NAME = "room_composition".freeze
  end
end
