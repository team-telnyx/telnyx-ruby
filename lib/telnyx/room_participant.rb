# frozen_string_literal: true

module Telnyx
  class RoomParticipant < APIResource
    extend APIOperations::List

    OBJECT_NAME = "room_participant".freeze
  end
end
