# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        class ConversationalComponents
          # Returns the conversational components configured for the specified WhatsApp
          # phone number.
          #
          # @overload list(phone_number, request_options: {})
          #
          # @param phone_number [String] Phone number (E.164 format)
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListParams
          def list(phone_number, params = {})
            @client.request(
              method: :get,
              path: ["v2/whatsapp/phone_numbers/%1$s/conversational_components", phone_number],
              model: Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse,
              options: params[:request_options]
            )
          end

          # Updates the conversational components configured for the specified WhatsApp
          # phone number.
          #
          # @overload patch_all(phone_number, commands: nil, ice_breakers: nil, request_options: {})
          #
          # @param phone_number [String] Phone number (E.164 format)
          #
          # @param commands [Array<Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command>] List of commands
          #
          # @param ice_breakers [Array<String>] List of ice breakers
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams
          def patch_all(phone_number, params = {})
            parsed, options =
              Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["v2/whatsapp/phone_numbers/%1$s/conversational_components", phone_number],
              body: parsed,
              model: Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse,
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
