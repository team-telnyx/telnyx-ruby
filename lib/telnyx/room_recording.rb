# frozen_string_literal: true

module Telnyx
  class RoomRecording < APIResource
    include APIOperations::Delete
    extend APIOperations::List

    OBJECT_NAME = "room_recording".freeze
  end
end
