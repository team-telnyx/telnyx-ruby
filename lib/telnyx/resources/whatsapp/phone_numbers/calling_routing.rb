# frozen_string_literal: true

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
          #
          # @overload list(id, request_options: {})
          #
          # @param id [String] The BYON phone number in E.164 format. The leading `+` is optional.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingListResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingListParams
          def list(id, params = {})
            @client.request(
              method: :get,
              path: ["whatsapp/phone_numbers/%1$s/calling_routing", id],
              model: Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingListResponse,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams} for more
          # details.
          #
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
          #
          # @overload patch_all(id, connection_id:, request_options: {})
          #
          # @param id [String] The BYON phone number in E.164 format. The leading `+` is optional.
          #
          # @param connection_id [String, Integer, nil] ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingPatchAllResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams
          def patch_all(id, params)
            parsed, options = Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["whatsapp/phone_numbers/%1$s/calling_routing", id],
              body: parsed,
              model: Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingPatchAllResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
