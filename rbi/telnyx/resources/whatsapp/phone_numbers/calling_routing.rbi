# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        class CallingRouting
          # Retrieve the routing connection currently stored for a BYON (Bring Your Own
          # Number) phone number: the connection that inbound WhatsApp calls to the number
          # are delivered to.
          #
          # Use it to check the result of
          # `PATCH /whatsapp/phone_numbers/{id}/calling_routing`. A read made immediately
          # after an update can still return the previous value.
          #
          # Sub-users need read permission on connections.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingListResponse
            )
          end
          def list(
            # The BYON phone number in E.164 format. The leading `+` is optional.
            id,
            request_options: {}
          )
          end

          # Set or clear the connection that inbound WhatsApp calls to a BYON (Bring Your
          # Own Number) phone number are delivered to.
          #
          # The update is processed asynchronously. A `202` response means the request was
          # accepted, not that the routing changed. Check the result with
          # `GET /whatsapp/phone_numbers/{id}/calling_routing`, which can return the
          # previous value immediately after an update. An update for a number that is not a
          # WhatsApp Calling number in the account returns 404.
          #
          # The connection must belong to the same account and must not be a WhatsApp
          # connection. Send `connection_id: null` to clear the routing; omitting
          # `connection_id` is rejected. Numbers active on Telnyx are rejected, because they
          # route through their own connection assignment.
          #
          # Sub-users need update permission on connections, and read permission to check
          # the result with `GET`.
          sig do
            params(
              id: String,
              connection_id:
                T.nilable(
                  Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams::ConnectionID::Variants
                ),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingPatchAllResponse
            )
          end
          def patch_all(
            # The BYON phone number in E.164 format. The leading `+` is optional.
            id,
            # ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
            # to 9223372036854775807, sent as a decimal string or an integer. Send a string to
            # keep large IDs exact. Non-null values are returned as strings. `null` clears the
            # routing.
            connection_id:,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
