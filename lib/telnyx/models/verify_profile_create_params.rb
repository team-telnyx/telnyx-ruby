# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#create
    class VerifyProfileCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute call
      #
      #   @return [Telnyx::Models::VerifyProfileCreateParams::Call, nil]
      optional :call, -> { Telnyx::VerifyProfileCreateParams::Call }

      # @!attribute flashcall
      #
      #   @return [Telnyx::Models::VerifyProfileCreateParams::Flashcall, nil]
      optional :flashcall, -> { Telnyx::VerifyProfileCreateParams::Flashcall }

      # @!attribute language
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute sms
      #
      #   @return [Telnyx::Models::VerifyProfileCreateParams::SMS, nil]
      optional :sms, -> { Telnyx::VerifyProfileCreateParams::SMS }

      # @!attribute webhook_failover_url
      #
      #   @return [String, nil]
      optional :webhook_failover_url, String

      # @!attribute webhook_url
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(name:, call: nil, flashcall: nil, language: nil, sms: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #   @param name [String]
      #   @param call [Telnyx::Models::VerifyProfileCreateParams::Call]
      #   @param flashcall [Telnyx::Models::VerifyProfileCreateParams::Flashcall]
      #   @param language [String]
      #   @param sms [Telnyx::Models::VerifyProfileCreateParams::SMS]
      #   @param webhook_failover_url [String]
      #   @param webhook_url [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Call < Telnyx::Internal::Type::BaseModel
        # @!attribute app_name
        #   The name that identifies the application requesting 2fa in the verification
        #   message.
        #
        #   @return [String, nil]
        optional :app_name, String

        # @!attribute code_length
        #   The length of the verify code to generate.
        #
        #   @return [Integer, nil]
        optional :code_length, Integer

        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!attribute messaging_template_id
        #   The message template identifier selected from /verify_profiles/templates
        #
        #   @return [String, nil]
        optional :messaging_template_id, String

        # @!attribute whitelisted_destinations
        #   Enabled country destinations to send verification codes. The elements in the
        #   list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        #   destinations will be allowed.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(app_name: nil, code_length: nil, default_verification_timeout_secs: nil, messaging_template_id: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfileCreateParams::Call} for more details.
        #
        #   @param app_name [String] The name that identifies the application requesting 2fa in the verification mess
        #
        #   @param code_length [Integer] The length of the verify code to generate.
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
        #
        #   @param messaging_template_id [String] The message template identifier selected from /verify_profiles/templates
        #
        #   @param whitelisted_destinations [Array<String>] Enabled country destinations to send verification codes. The elements in the lis
      end

      class Flashcall < Telnyx::Internal::Type::BaseModel
        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!attribute whitelisted_destinations
        #   Enabled country destinations to send verification codes. The elements in the
        #   list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        #   destinations will be allowed.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(default_verification_timeout_secs: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfileCreateParams::Flashcall} for more details.
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
        #
        #   @param whitelisted_destinations [Array<String>] Enabled country destinations to send verification codes. The elements in the lis
      end

      class SMS < Telnyx::Internal::Type::BaseModel
        # @!attribute whitelisted_destinations
        #   Enabled country destinations to send verification codes. The elements in the
        #   list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        #   destinations will be allowed.
        #
        #   @return [Array<String>]
        required :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute alpha_sender
        #   The alphanumeric sender ID to use when sending to destinations that require an
        #   alphanumeric sender ID.
        #
        #   @return [String, nil]
        optional :alpha_sender, String, nil?: true

        # @!attribute app_name
        #   The name that identifies the application requesting 2fa in the verification
        #   message.
        #
        #   @return [String, nil]
        optional :app_name, String

        # @!attribute code_length
        #   The length of the verify code to generate.
        #
        #   @return [Integer, nil]
        optional :code_length, Integer

        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!attribute messaging_template_id
        #   The message template identifier selected from /verify_profiles/templates
        #
        #   @return [String, nil]
        optional :messaging_template_id, String

        # @!method initialize(whitelisted_destinations:, alpha_sender: nil, app_name: nil, code_length: nil, default_verification_timeout_secs: nil, messaging_template_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfileCreateParams::SMS} for more details.
        #
        #   @param whitelisted_destinations [Array<String>] Enabled country destinations to send verification codes. The elements in the lis
        #
        #   @param alpha_sender [String, nil] The alphanumeric sender ID to use when sending to destinations that require an a
        #
        #   @param app_name [String] The name that identifies the application requesting 2fa in the verification mess
        #
        #   @param code_length [Integer] The length of the verify code to generate.
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
        #
        #   @param messaging_template_id [String] The message template identifier selected from /verify_profiles/templates
      end
    end
  end
end
