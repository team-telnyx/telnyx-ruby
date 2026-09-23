# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BotSignup#create
    class BotSignupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute bot_challenge_answer
      #   Answer to the issued bot challenge.
      #
      #   @return [String]
      required :bot_challenge_answer, String

      # @!attribute bot_challenge_nonce
      #   Nonce from a previously issued bot challenge.
      #
      #   @return [String]
      required :bot_challenge_nonce, String

      # @!attribute privacy_policy_url
      #   Must exactly match the privacy-policy URL returned by the challenge endpoint.
      #
      #   @return [String]
      required :privacy_policy_url, String

      # @!attribute terms_and_conditions_url
      #   Must exactly match the terms-and-conditions URL returned by the challenge
      #   endpoint.
      #
      #   @return [String]
      required :terms_and_conditions_url, String

      # @!attribute terms_of_service
      #   Must be true to accept the terms of service.
      #
      #   @return [Boolean, Telnyx::Models::BotSignupCreateParams::TermsOfService]
      required :terms_of_service, enum: -> { Telnyx::BotSignupCreateParams::TermsOfService }

      # @!attribute email
      #   Email address for the new account. The magic link is sent here. May only be
      #   omitted when placeholder-email registration is enabled server-side.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute terms_and_conditions_eu_url
      #   EU terms-and-conditions URL. Required when EU consent enforcement is enabled.
      #
      #   @return [String, nil]
      optional :terms_and_conditions_eu_url, String

      # @!attribute terms_of_service_eu
      #   EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
      #
      #   @return [Boolean, Telnyx::Models::BotSignupCreateParams::TermsOfServiceEu, nil]
      optional :terms_of_service_eu, enum: -> { Telnyx::BotSignupCreateParams::TermsOfServiceEu }

      # @!method initialize(bot_challenge_answer:, bot_challenge_nonce:, privacy_policy_url:, terms_and_conditions_url:, terms_of_service:, email: nil, terms_and_conditions_eu_url: nil, terms_of_service_eu: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BotSignupCreateParams} for more details.
      #
      #   @param bot_challenge_answer [String] Answer to the issued bot challenge.
      #
      #   @param bot_challenge_nonce [String] Nonce from a previously issued bot challenge.
      #
      #   @param privacy_policy_url [String] Must exactly match the privacy-policy URL returned by the challenge endpoint.
      #
      #   @param terms_and_conditions_url [String] Must exactly match the terms-and-conditions URL returned by the challenge endpoi
      #
      #   @param terms_of_service [Boolean, Telnyx::Models::BotSignupCreateParams::TermsOfService] Must be true to accept the terms of service.
      #
      #   @param email [String] Email address for the new account. The magic link is sent here. May only be omit
      #
      #   @param terms_and_conditions_eu_url [String] EU terms-and-conditions URL. Required when EU consent enforcement is enabled.
      #
      #   @param terms_of_service_eu [Boolean, Telnyx::Models::BotSignupCreateParams::TermsOfServiceEu] EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Must be true to accept the terms of service.
      module TermsOfService
        extend Telnyx::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      # EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
      module TermsOfServiceEu
        extend Telnyx::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
