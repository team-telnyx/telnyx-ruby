# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BotSessions#list
    class BotSessionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute email
      #   Email address associated with the magic link token.
      #
      #   @return [String]
      required :email, String

      # @!attribute portal_redirect_token
      #   Single-use portal redirect (magic link) token, a UUIDv7 sent to the account
      #   owner's email.
      #
      #   @return [String]
      required :portal_redirect_token, String

      # @!method initialize(email:, portal_redirect_token:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::BotSessionListParams} for more details.
      #
      #   @param email [String] Email address associated with the magic link token.
      #
      #   @param portal_redirect_token [String] Single-use portal redirect (magic link) token, a UUIDv7 sent to the account owne
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
