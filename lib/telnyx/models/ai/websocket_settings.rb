# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class WebsocketSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute auth_ref
        #   Integration secret identifier whose value Telnyx sends as an
        #   `Authorization: Bearer <value>` header on the upgrade request. Resolved on every
        #   connection attempt, so a rotated secret is picked up by the next reconnect.
        #
        #   @return [String, nil]
        optional :auth_ref, String

        # @!attribute enabled
        #   Whether Telnyx opens a WebSocket to `url` for each of this assistant's
        #   conversations. Defaults to `false`.
        #
        #   @return [Boolean, nil]
        optional :enabled, Telnyx::Internal::Type::Boolean

        # @!attribute url
        #   The `ws://` or `wss://` endpoint Telnyx connects to. Required when `enabled` is
        #   `true`. Must be externally reachable — localhost, private IP ranges and `.local`
        #   domains are rejected.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(auth_ref: nil, enabled: nil, url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::WebsocketSettings} for more details.
        #
        #   Streams conversation and telephony events to a WebSocket server you host, and
        #   accepts messages injected back into the conversation. Telnyx opens the
        #   connection as a client, once per conversation. Delivery is best effort
        #   throughout: while the connection is down events are dropped rather than queued,
        #   and no socket failure is ever allowed to affect the call. Beta feature.
        #
        #   @param auth_ref [String] Integration secret identifier whose value Telnyx sends as an `Authorization: Bea
        #
        #   @param enabled [Boolean] Whether Telnyx opens a WebSocket to `url` for each of this assistant's conversat
        #
        #   @param url [String] The `ws://` or `wss://` endpoint Telnyx connects to. Required when `enabled` is
      end
    end
  end
end
