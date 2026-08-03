# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailBlocks#create
    class EmailBlockCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute to
      #   Recipient address (normalized: trim + lower-case).
      #
      #   @return [String]
      required :to, String

      # @!attribute domain_id
      #   `null` ⇒ account scope.
      #
      #   @return [String, nil]
      optional :domain_id, String, nil?: true

      # @!attribute expires_at
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute from
      #   Sender address (normalized). `null` ⇒ account/domain scope.
      #
      #   @return [String, nil]
      optional :from, String, nil?: true

      # @!method initialize(to:, domain_id: nil, expires_at: nil, from: nil, request_options: {})
      #   @param to [String] Recipient address (normalized: trim + lower-case).
      #
      #   @param domain_id [String, nil] `null` ⇒ account scope.
      #
      #   @param expires_at [Time, nil]
      #
      #   @param from [String, nil] Sender address (normalized). `null` ⇒ account/domain scope.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
