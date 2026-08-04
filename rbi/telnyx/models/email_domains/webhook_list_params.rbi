# typed: strong

module Telnyx
  module Models
    module EmailDomains
      class WebhookListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailDomains::WebhookListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :domain_id

        # Page number to return (offset pagination)
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Number of records per page
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Field to sort by. Prefix with `-` for descending order.
        sig do
          returns(
            T.nilable(Telnyx::EmailDomains::WebhookListParams::Sort::OrSymbol)
          )
        end
        attr_reader :sort

        sig do
          params(
            sort: Telnyx::EmailDomains::WebhookListParams::Sort::OrSymbol
          ).void
        end
        attr_writer :sort

        sig do
          params(
            domain_id: String,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::EmailDomains::WebhookListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          domain_id:,
          # Page number to return (offset pagination)
          page_number: nil,
          # Number of records per page
          page_size: nil,
          # Field to sort by. Prefix with `-` for descending order.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              domain_id: String,
              page_number: Integer,
              page_size: Integer,
              sort: Telnyx::EmailDomains::WebhookListParams::Sort::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Field to sort by. Prefix with `-` for descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailDomains::WebhookListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::EmailDomains::WebhookListParams::Sort::TaggedSymbol
            )
          CREATED_AT_DESC =
            T.let(
              :"-created_at",
              Telnyx::EmailDomains::WebhookListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailDomains::WebhookListParams::Sort::TaggedSymbol
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
