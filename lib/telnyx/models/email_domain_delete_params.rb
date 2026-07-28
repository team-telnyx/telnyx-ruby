# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#delete
    class EmailDomainDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute force
      #   Required as true when deleting verified domains
      #
      #   @return [Boolean, nil]
      optional :force, Telnyx::Internal::Type::Boolean

      # @!method initialize(id:, force: nil, request_options: {})
      #   @param id [String]
      #
      #   @param force [Boolean] Required as true when deleting verified domains
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
