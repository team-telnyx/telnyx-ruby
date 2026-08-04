# typed: strong

module Telnyx
  module Models
    module EmailMessages
      class RecipientListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailMessages::RecipientListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_id

        # Filter recipients by address kind.
        sig do
          returns(
            T.nilable(
              Telnyx::EmailMessages::RecipientListParams::Kind::OrSymbol
            )
          )
        end
        attr_reader :kind

        sig do
          params(
            kind: Telnyx::EmailMessages::RecipientListParams::Kind::OrSymbol
          ).void
        end
        attr_writer :kind

        # Opaque URL-safe Base64 cursor returned by a previous list response.
        sig { returns(T.nilable(String)) }
        attr_reader :page_cursor

        sig { params(page_cursor: String).void }
        attr_writer :page_cursor

        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Filter recipients by status.
        sig do
          returns(
            T.nilable(
              Telnyx::EmailMessages::RecipientListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::EmailMessages::RecipientListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            email_id: String,
            kind: Telnyx::EmailMessages::RecipientListParams::Kind::OrSymbol,
            page_cursor: String,
            page_size: Integer,
            status:
              Telnyx::EmailMessages::RecipientListParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          email_id:,
          # Filter recipients by address kind.
          kind: nil,
          # Opaque URL-safe Base64 cursor returned by a previous list response.
          page_cursor: nil,
          # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
          # clamped to the valid range.
          page_size: nil,
          # Filter recipients by status.
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              email_id: String,
              kind: Telnyx::EmailMessages::RecipientListParams::Kind::OrSymbol,
              page_cursor: String,
              page_size: Integer,
              status:
                Telnyx::EmailMessages::RecipientListParams::Status::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter recipients by address kind.
        module Kind
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailMessages::RecipientListParams::Kind)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TO =
            T.let(
              :to,
              Telnyx::EmailMessages::RecipientListParams::Kind::TaggedSymbol
            )
          CC =
            T.let(
              :cc,
              Telnyx::EmailMessages::RecipientListParams::Kind::TaggedSymbol
            )
          BCC =
            T.let(
              :bcc,
              Telnyx::EmailMessages::RecipientListParams::Kind::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailMessages::RecipientListParams::Kind::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter recipients by status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailMessages::RecipientListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :deferred,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          BOUNCED =
            T.let(
              :bounced,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          GW_REJECT =
            T.let(
              :gw_reject,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailMessages::RecipientListParams::Status::TaggedSymbol
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
