# typed: strong

module Telnyx
  module Models
    class EnterpriseListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EnterpriseListParams, Telnyx::Internal::AnyHash)
        end

      # Filter by legal name (partial match).
      sig { returns(T.nilable(String)) }
      attr_reader :legal_name

      sig { params(legal_name: String).void }
      attr_writer :legal_name

      # 1-based page number. Out-of-range values return an empty page with correct meta.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Items per page. Default 10. Maximum 250; values above are clamped to 250.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          legal_name: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by legal name (partial match).
        legal_name: nil,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Default 10. Maximum 250; values above are clamped to 250.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            legal_name: String,
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
