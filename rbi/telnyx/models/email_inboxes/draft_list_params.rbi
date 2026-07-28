# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class DraftListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::DraftListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inbox_id

        # Restrict results to drafts in this state.
        sig do
          returns(
            T.nilable(
              Telnyx::EmailInboxes::DraftListParams::FilterStatus::OrSymbol
            )
          )
        end
        attr_reader :filter_status

        sig do
          params(
            filter_status:
              Telnyx::EmailInboxes::DraftListParams::FilterStatus::OrSymbol
          ).void
        end
        attr_writer :filter_status

        # Opaque cursor returned by the previous page.
        sig { returns(T.nilable(String)) }
        attr_reader :page_after

        sig { params(page_after: String).void }
        attr_writer :page_after

        # Number of results to return. Defaults to 25; maximum is 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            inbox_id: String,
            filter_status:
              Telnyx::EmailInboxes::DraftListParams::FilterStatus::OrSymbol,
            page_after: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          inbox_id:,
          # Restrict results to drafts in this state.
          filter_status: nil,
          # Opaque cursor returned by the previous page.
          page_after: nil,
          # Number of results to return. Defaults to 25; maximum is 100.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              inbox_id: String,
              filter_status:
                Telnyx::EmailInboxes::DraftListParams::FilterStatus::OrSymbol,
              page_after: String,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Restrict results to drafts in this state.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::DraftListParams::FilterStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              Telnyx::EmailInboxes::DraftListParams::FilterStatus::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::EmailInboxes::DraftListParams::FilterStatus::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::EmailInboxes::DraftListParams::FilterStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::DraftListParams::FilterStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
