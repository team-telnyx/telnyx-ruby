# typed: strong

module Telnyx
  module Models
    class PartnerCampaignListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PartnerCampaignListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      sig { returns(T.nilable(T::Array[Telnyx::TelnyxDownstreamCampaign])) }
      attr_reader :records

      sig do
        params(records: T::Array[Telnyx::TelnyxDownstreamCampaign::OrHash]).void
      end
      attr_writer :records

      sig { returns(T.nilable(Integer)) }
      attr_reader :total_records

      sig { params(total_records: Integer).void }
      attr_writer :total_records

      sig do
        params(
          page: Integer,
          records: T::Array[Telnyx::TelnyxDownstreamCampaign::OrHash],
          total_records: Integer
        ).returns(T.attached_class)
      end
      def self.new(page: nil, records: nil, total_records: nil)
      end

      sig do
        override.returns(
          {
            page: Integer,
            records: T::Array[Telnyx::TelnyxDownstreamCampaign],
            total_records: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
