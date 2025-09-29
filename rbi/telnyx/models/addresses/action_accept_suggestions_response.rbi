# typed: strong

module Telnyx
  module Models
    module Addresses
      class ActionAcceptSuggestionsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The UUID of the location.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Indicates if the address suggestions are accepted.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :accepted

          sig { params(accepted: T::Boolean).void }
          attr_writer :accepted

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType::TaggedSymbol
              )
            )
          end
          attr_reader :record_type

          sig do
            params(
              record_type:
                Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType::OrSymbol
            ).void
          end
          attr_writer :record_type

          sig do
            params(
              id: String,
              accepted: T::Boolean,
              record_type:
                Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The UUID of the location.
            id: nil,
            # Indicates if the address suggestions are accepted.
            accepted: nil,
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                accepted: T::Boolean,
                record_type:
                  Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType::TaggedSymbol
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
                  Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ADDRESS_SUGGESTION =
              T.let(
                :address_suggestion,
                Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Addresses::ActionAcceptSuggestionsResponse::Data::RecordType::TaggedSymbol
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
