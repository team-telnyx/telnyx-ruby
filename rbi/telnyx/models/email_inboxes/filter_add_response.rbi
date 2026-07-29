# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class FilterAddResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailInboxes::FilterAddResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::Models::EmailInboxes::FilterAddResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::EmailInboxes::FilterAddResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::EmailInboxes::FilterAddResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::EmailInboxes::FilterAddResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailInboxes::FilterAddResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :allowlist

          sig { returns(T::Array[String]) }
          attr_accessor :blocklist

          sig do
            returns(
              Telnyx::Models::EmailInboxes::FilterAddResponse::Data::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          sig do
            params(
              allowlist: T::Array[String],
              blocklist: T::Array[String],
              record_type:
                Telnyx::Models::EmailInboxes::FilterAddResponse::Data::RecordType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(allowlist:, blocklist:, record_type:)
          end

          sig do
            override.returns(
              {
                allowlist: T::Array[String],
                blocklist: T::Array[String],
                record_type:
                  Telnyx::Models::EmailInboxes::FilterAddResponse::Data::RecordType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::EmailInboxes::FilterAddResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL_INBOX_FILTERS =
              T.let(
                :email_inbox_filters,
                Telnyx::Models::EmailInboxes::FilterAddResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailInboxes::FilterAddResponse::Data::RecordType::TaggedSymbol
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
end
