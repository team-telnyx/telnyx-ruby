# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailDomains#retrieve_dns_records
    class EmailDomainRetrieveDNSRecordsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DNSRecord>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DNSRecord] }

      # @!method initialize(data:)
      #   @param data [Array<Telnyx::Models::DNSRecord>]
    end
  end
end
