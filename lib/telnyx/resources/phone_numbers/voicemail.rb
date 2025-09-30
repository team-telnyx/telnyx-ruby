# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      class Voicemail
        # Create voicemail settings for a phone number
        #
        # @overload create(phone_number_id, enabled: nil, pin: nil, request_options: {})
        #
        # @param phone_number_id [String] The ID of the phone number.
        #
        # @param enabled [Boolean] Whether voicemail is enabled.
        #
        # @param pin [String] The pin used for voicemail
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::VoicemailCreateResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::VoicemailCreateParams
        def create(phone_number_id, params = {})
          parsed, options = Telnyx::PhoneNumbers::VoicemailCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["phone_numbers/%1$s/voicemail", phone_number_id],
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::VoicemailCreateResponse,
            options: options
          )
        end

        # Returns the voicemail settings for a phone number
        #
        # @overload retrieve(phone_number_id, request_options: {})
        #
        # @param phone_number_id [String] The ID of the phone number.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::VoicemailRetrieveResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::VoicemailRetrieveParams
        def retrieve(phone_number_id, params = {})
          @client.request(
            method: :get,
            path: ["phone_numbers/%1$s/voicemail", phone_number_id],
            model: Telnyx::Models::PhoneNumbers::VoicemailRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update voicemail settings for a phone number
        #
        # @overload update(phone_number_id, enabled: nil, pin: nil, request_options: {})
        #
        # @param phone_number_id [String] The ID of the phone number.
        #
        # @param enabled [Boolean] Whether voicemail is enabled.
        #
        # @param pin [String] The pin used for voicemail
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::VoicemailUpdateResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::VoicemailUpdateParams
        def update(phone_number_id, params = {})
          parsed, options = Telnyx::PhoneNumbers::VoicemailUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["phone_numbers/%1$s/voicemail", phone_number_id],
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::VoicemailUpdateResponse,
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
