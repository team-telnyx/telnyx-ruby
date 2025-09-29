# typed: strong

module Telnyx
  module Models
    class BulkSimCardActionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BulkSimCardActionListParams, Telnyx::Internal::AnyHash)
        end

      # Filter by action type.
      sig do
        returns(
          T.nilable(
            Telnyx::BulkSimCardActionListParams::FilterActionType::OrSymbol
          )
        )
      end
      attr_reader :filter_action_type

      sig do
        params(
          filter_action_type:
            Telnyx::BulkSimCardActionListParams::FilterActionType::OrSymbol
        ).void
      end
      attr_writer :filter_action_type

      # The page number to load.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # The size of the page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter_action_type:
            Telnyx::BulkSimCardActionListParams::FilterActionType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by action type.
        filter_action_type: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_action_type:
              Telnyx::BulkSimCardActionListParams::FilterActionType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by action type.
      module FilterActionType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::BulkSimCardActionListParams::FilterActionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BULK_SET_PUBLIC_IPS =
          T.let(
            :bulk_set_public_ips,
            Telnyx::BulkSimCardActionListParams::FilterActionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::BulkSimCardActionListParams::FilterActionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
