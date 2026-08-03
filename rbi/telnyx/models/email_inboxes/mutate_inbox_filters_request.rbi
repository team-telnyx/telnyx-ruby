# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class MutateInboxFiltersRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::MutateInboxFiltersRequest,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :entries

        # The list to change.
        sig do
          returns(
            Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            entries: T::Array[String],
            type:
              Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          entries:,
          # The list to change.
          type:
        )
        end

        sig do
          override.returns(
            {
              entries: T::Array[String],
              type:
                Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The list to change.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALLOWLIST =
            T.let(
              :allowlist,
              Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::TaggedSymbol
            )
          BLOCKLIST =
            T.let(
              :blocklist,
              Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type::TaggedSymbol
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
