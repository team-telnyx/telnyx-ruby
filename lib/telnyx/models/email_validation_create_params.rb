# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailValidations#create
    class EmailValidationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute email
      #   Email address to validate. Any non-empty string is accepted; invalid syntax
      #   returns valid=false rather than a request error.
      #
      #   @return [String]
      required :email, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(email:, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailValidationCreateParams} for more details.
      #
      #   @param email [String] Email address to validate. Any non-empty string is accepted; invalid syntax retu
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
