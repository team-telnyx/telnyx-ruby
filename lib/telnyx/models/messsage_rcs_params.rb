# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Messsages#rcs
    class MesssageRcsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute agent_id
      #   RCS Agent ID
      #
      #   @return [String]
      required :agent_id, String

      # @!attribute agent_message
      #
      #   @return [Telnyx::Models::RcsAgentMessage]
      required :agent_message, -> { Telnyx::RcsAgentMessage }

      # @!attribute messaging_profile_id
      #   A valid messaging profile ID
      #
      #   @return [String]
      required :messaging_profile_id, String

      # @!attribute to
      #   Phone number in +E.164 format
      #
      #   @return [String]
      required :to, String

      # @!attribute mms_fallback
      #
      #   @return [Telnyx::Models::MesssageRcsParams::MmsFallback, nil]
      optional :mms_fallback, -> { Telnyx::MesssageRcsParams::MmsFallback }

      # @!attribute sms_fallback
      #
      #   @return [Telnyx::Models::MesssageRcsParams::SMSFallback, nil]
      optional :sms_fallback, -> { Telnyx::MesssageRcsParams::SMSFallback }

      # @!attribute type
      #   Message type - must be set to "RCS"
      #
      #   @return [Symbol, Telnyx::Models::MesssageRcsParams::Type, nil]
      optional :type, enum: -> { Telnyx::MesssageRcsParams::Type }

      # @!attribute webhook_url
      #   The URL where webhooks related to this message will be sent.
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(agent_id:, agent_message:, messaging_profile_id:, to:, mms_fallback: nil, sms_fallback: nil, type: nil, webhook_url: nil, request_options: {})
      #   @param agent_id [String] RCS Agent ID
      #
      #   @param agent_message [Telnyx::Models::RcsAgentMessage]
      #
      #   @param messaging_profile_id [String] A valid messaging profile ID
      #
      #   @param to [String] Phone number in +E.164 format
      #
      #   @param mms_fallback [Telnyx::Models::MesssageRcsParams::MmsFallback]
      #
      #   @param sms_fallback [Telnyx::Models::MesssageRcsParams::SMSFallback]
      #
      #   @param type [Symbol, Telnyx::Models::MesssageRcsParams::Type] Message type - must be set to "RCS"
      #
      #   @param webhook_url [String] The URL where webhooks related to this message will be sent.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class MmsFallback < Telnyx::Internal::Type::BaseModel
        # @!attribute from
        #   Phone number in +E.164 format
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute media_urls
        #   List of media URLs
        #
        #   @return [Array<String>, nil]
        optional :media_urls, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute subject
        #   Subject of the message
        #
        #   @return [String, nil]
        optional :subject, String

        # @!attribute text
        #   Text
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(from: nil, media_urls: nil, subject: nil, text: nil)
        #   @param from [String] Phone number in +E.164 format
        #
        #   @param media_urls [Array<String>] List of media URLs
        #
        #   @param subject [String] Subject of the message
        #
        #   @param text [String] Text
      end

      class SMSFallback < Telnyx::Internal::Type::BaseModel
        # @!attribute from
        #   Phone number in +E.164 format
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute text
        #   Text (maximum 3072 characters)
        #
        #   @return [String, nil]
        optional :text, String

        # @!method initialize(from: nil, text: nil)
        #   @param from [String] Phone number in +E.164 format
        #
        #   @param text [String] Text (maximum 3072 characters)
      end

      # Message type - must be set to "RCS"
      module Type
        extend Telnyx::Internal::Type::Enum

        RCS = :RCS

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
