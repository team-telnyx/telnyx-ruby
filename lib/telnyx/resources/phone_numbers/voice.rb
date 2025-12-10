# frozen_string_literal: true

module Telnyx
  module Resources
    class PhoneNumbers
      class Voice
        # Retrieve a phone number with voice settings
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::VoiceRetrieveResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::VoiceRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["phone_numbers/%1$s/voice", id],
            model: Telnyx::Models::PhoneNumbers::VoiceRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::VoiceUpdateParams} for more details.
        #
        # Update a phone number with voice settings
        #
        # @overload update(id, call_forwarding: nil, call_recording: nil, caller_id_name_enabled: nil, cnam_listing: nil, inbound_call_screening: nil, media_features: nil, tech_prefix_enabled: nil, translated_number: nil, usage_payment_method: nil, request_options: {})
        #
        # @param id [String] Identifies the resource.
        #
        # @param call_forwarding [Telnyx::Models::PhoneNumbers::CallForwarding] The call forwarding settings for a phone number.
        #
        # @param call_recording [Telnyx::Models::PhoneNumbers::CallRecording] The call recording settings for a phone number.
        #
        # @param caller_id_name_enabled [Boolean] Controls whether the caller ID name is enabled for this phone number.
        #
        # @param cnam_listing [Telnyx::Models::PhoneNumbers::CnamListing] The CNAM listing settings for a phone number.
        #
        # @param inbound_call_screening [Symbol, Telnyx::Models::PhoneNumbers::UpdateVoiceSettings::InboundCallScreening] The inbound_call_screening setting is a phone number configuration option variab
        #
        # @param media_features [Telnyx::Models::PhoneNumbers::MediaFeatures] The media features settings for a phone number.
        #
        # @param tech_prefix_enabled [Boolean] Controls whether a tech prefix is enabled for this phone number.
        #
        # @param translated_number [String] This field allows you to rewrite the destination number of an inbound call befor
        #
        # @param usage_payment_method [Symbol, Telnyx::Models::PhoneNumbers::UpdateVoiceSettings::UsagePaymentMethod] Controls whether a number is billed per minute or uses your concurrent channels.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::VoiceUpdateResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::VoiceUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::PhoneNumbers::VoiceUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["phone_numbers/%1$s/voice", id],
            body: parsed,
            model: Telnyx::Models::PhoneNumbers::VoiceUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::PhoneNumbers::VoiceListParams} for more details.
        #
        # List phone numbers with voice settings
        #
        # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::PhoneNumbers::VoiceListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
        #
        # @param page [Telnyx::Models::PhoneNumbers::VoiceListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param sort [Symbol, Telnyx::Models::PhoneNumbers::VoiceListParams::Sort] Specifies the sort order for results. If not given, results are sorted by create
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::PhoneNumbers::VoiceListResponse]
        #
        # @see Telnyx::Models::PhoneNumbers::VoiceListParams
        def list(params = {})
          parsed, options = Telnyx::PhoneNumbers::VoiceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "phone_numbers/voice",
            query: parsed,
            model: Telnyx::Models::PhoneNumbers::VoiceListResponse,
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
