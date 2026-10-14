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

      # Case-insensitive partial match on legal name.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_legal_name_contains

      sig { params(filter_legal_name_contains: String).void }
      attr_writer :filter_legal_name_contains

      # Only return enterprises of this type: `bpo` for call-center (BPO) enterprises,
      # `enterprise` for normal enterprises. Omit to return both.
      sig do
        returns(
          T.nilable(Telnyx::EnterpriseListParams::FilterRoleType::OrSymbol)
        )
      end
      attr_reader :filter_role_type

      sig do
        params(
          filter_role_type:
            Telnyx::EnterpriseListParams::FilterRoleType::OrSymbol
        ).void
      end
      attr_writer :filter_role_type

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
          filter_legal_name_contains: String,
          filter_role_type:
            Telnyx::EnterpriseListParams::FilterRoleType::OrSymbol,
          legal_name: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Case-insensitive partial match on legal name.
        filter_legal_name_contains: nil,
        # Only return enterprises of this type: `bpo` for call-center (BPO) enterprises,
        # `enterprise` for normal enterprises. Omit to return both.
        filter_role_type: nil,
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
            filter_legal_name_contains: String,
            filter_role_type:
              Telnyx::EnterpriseListParams::FilterRoleType::OrSymbol,
            legal_name: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Only return enterprises of this type: `bpo` for call-center (BPO) enterprises,
      # `enterprise` for normal enterprises. Omit to return both.
      module FilterRoleType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EnterpriseListParams::FilterRoleType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTERPRISE =
          T.let(
            :enterprise,
            Telnyx::EnterpriseListParams::FilterRoleType::TaggedSymbol
          )
        BPO =
          T.let(
            :bpo,
            Telnyx::EnterpriseListParams::FilterRoleType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EnterpriseListParams::FilterRoleType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
