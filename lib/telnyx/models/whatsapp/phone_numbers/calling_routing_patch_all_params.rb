# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::CallingRouting#patch_all
        class CallingRoutingPatchAllParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute connection_id
          #   ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
          #   to 9223372036854775807, sent as a decimal string or an integer. Send a string to
          #   keep large IDs exact. Non-null values are returned as strings. `null` clears the
          #   routing.
          #
          #   @return [String, Integer, nil]
          required :connection_id,
                   union: -> { Telnyx::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams::ConnectionID },
                   nil?: true

          # @!method initialize(id:, connection_id:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Whatsapp::PhoneNumbers::CallingRoutingPatchAllParams} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param connection_id [String, Integer, nil] ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # ID of the connection to deliver inbound WhatsApp calls to: a positive integer up
          # to 9223372036854775807, sent as a decimal string or an integer. Send a string to
          # keep large IDs exact. Non-null values are returned as strings. `null` clears the
          # routing.
          module ConnectionID
            extend Telnyx::Internal::Type::Union

            # ID of the connection to deliver inbound WhatsApp calls to: a positive integer up to 9223372036854775807, sent as a decimal string or an integer. Send a string to keep large IDs exact. Non-null values are returned as strings. `null` clears the routing.
            variant String

            # ID of the connection to deliver inbound WhatsApp calls to: a positive integer up to 9223372036854775807, sent as a decimal string or an integer. Send a string to keep large IDs exact. Non-null values are returned as strings. `null` clears the routing.
            variant Integer

            # @!method self.variants
            #   @return [Array(String, Integer)]
          end
        end
      end
    end
  end
end
