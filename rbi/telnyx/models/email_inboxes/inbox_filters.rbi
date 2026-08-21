# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class InboxFilters < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EmailInboxes::InboxFilters, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Array[String]) }
        attr_accessor :allowlist

        sig { returns(T::Array[String]) }
        attr_accessor :blocklist

        sig do
          returns(Telnyx::EmailInboxes::InboxFilters::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        sig do
          params(
            allowlist: T::Array[String],
            blocklist: T::Array[String],
            record_type:
              Telnyx::EmailInboxes::InboxFilters::RecordType::OrSymbol
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
                Telnyx::EmailInboxes::InboxFilters::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::InboxFilters::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_INBOX_FILTERS =
            T.let(
              :email_inbox_filters,
              Telnyx::EmailInboxes::InboxFilters::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::InboxFilters::RecordType::TaggedSymbol
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
