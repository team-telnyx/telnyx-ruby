# typed: strong

module Telnyx
  module Models
    class PhoneNumberCampaignListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PhoneNumberCampaignListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :page

      sig { returns(T::Array[Telnyx::PhoneNumberCampaign]) }
      attr_accessor :records

      sig { returns(Integer) }
      attr_accessor :total_records

      sig do
        params(
          page: Integer,
          records: T::Array[Telnyx::PhoneNumberCampaign::OrHash],
          total_records: Integer
        ).returns(T.attached_class)
      end
      def self.new(page:, records:, total_records:)
      end

      sig do
        override.returns(
          {
            page: Integer,
            records: T::Array[Telnyx::PhoneNumberCampaign],
            total_records: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
