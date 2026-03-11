# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        class CallingSettings
          # Get calling settings for a phone number
          #
          # @overload retrieve(phone_number, request_options: {})
          #
          # @param phone_number [String] Phone number (E.164 format)
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingRetrieveResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingRetrieveParams
          def retrieve(phone_number, params = {})
            @client.request(
              method: :get,
              path: ["v2/whatsapp/phone_numbers/%1$s/calling_settings", phone_number],
              model: Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Enable or disable Whatsapp calling for a phone number
          #
          # @overload update(phone_number, enabled:, request_options: {})
          #
          # @param phone_number [String] Phone number (E.164 format)
          #
          # @param enabled [Boolean]
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse]
          #
          # @see Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateParams
          def update(phone_number, params)
            parsed, options = Telnyx::Whatsapp::PhoneNumbers::CallingSettingUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["v2/whatsapp/phone_numbers/%1$s/calling_settings", phone_number],
              body: parsed,
              model: Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse,
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
