# typed: strong

module Telnyx
  module Models
    class EmailDomainRetrieveDNSRecordsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailDomainRetrieveDNSRecordsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::DNSRecord]) }
      attr_accessor :data

      sig do
        params(data: T::Array[Telnyx::DNSRecord::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[Telnyx::DNSRecord] }) }
      def to_hash
      end
    end
  end
end
