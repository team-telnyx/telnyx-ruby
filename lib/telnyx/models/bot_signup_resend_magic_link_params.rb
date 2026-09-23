# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BotSignup#resend_magic_link
    class BotSignupResendMagicLinkParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute email
      #   Email address of the bot signup account to resend the magic link to.
      #
      #   @return [String]
      required :email, String

      # @!method initialize(email:, request_options: {})
      #   @param email [String] Email address of the bot signup account to resend the magic link to.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
