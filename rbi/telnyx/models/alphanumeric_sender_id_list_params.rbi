# typed: strong

module Telnyx
  module Models
    class AlphanumericSenderIDListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AlphanumericSenderIDListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Filter by messaging profile ID.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_messaging_profile_id

      sig { params(filter_messaging_profile_id: String).void }
      attr_writer :filter_messaging_profile_id

      # Page number.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter_messaging_profile_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by messaging profile ID.
        filter_messaging_profile_id: nil,
        # Page number.
        page_number: nil,
        # Page size.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_messaging_profile_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
