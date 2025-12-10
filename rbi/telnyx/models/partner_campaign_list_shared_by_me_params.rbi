# typed: strong

module Telnyx
  module Models
    class PartnerCampaignListSharedByMeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::PartnerCampaignListSharedByMeParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The 1-indexed page number to get. The default value is `1`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # The amount of records per page, limited to between 1 and 500 inclusive. The
      # default value is `10`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :records_per_page

      sig { params(records_per_page: Integer).void }
      attr_writer :records_per_page

      sig do
        params(
          page: Integer,
          records_per_page: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The 1-indexed page number to get. The default value is `1`.
        page: nil,
        # The amount of records per page, limited to between 1 and 500 inclusive. The
        # default value is `10`.
        records_per_page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Integer,
            records_per_page: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
