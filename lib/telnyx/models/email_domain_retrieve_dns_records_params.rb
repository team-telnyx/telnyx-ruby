# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#retrieve_dns_records
    class EmailDomainRetrieveDNSRecordsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute domain_id
      #
      #   @return [String]
      required :domain_id, String

      # @!method initialize(domain_id:, request_options: {})
      #   @param domain_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
