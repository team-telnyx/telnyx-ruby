# typed: strong

module Telnyx
  module Models
    class EmailUnsubscribeGroupDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::EmailUnsubscribeGroupDeleteParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      # (bool) are truthy; all other values are false.
      sig do
        returns(
          T.nilable(
            T.any(
              Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::OrSymbol,
              T::Boolean
            )
          )
        )
      end
      attr_reader :force

      sig do
        params(
          force:
            T.any(
              Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::OrSymbol,
              T::Boolean
            )
        ).void
      end
      attr_writer :force

      sig do
        params(
          id: String,
          force:
            T.any(
              Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::OrSymbol,
              T::Boolean
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Force-delete a group with active suppressions. Only `"true"` (string) or `true`
        # (bool) are truthy; all other values are false.
        force: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            force:
              T.any(
                Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::OrSymbol,
                T::Boolean
              ),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Force-delete a group with active suppressions. Only `"true"` (string) or `true`
      # (bool) are truthy; all other values are false.
      module Force
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::TaggedSymbol,
              T::Boolean
            )
          end

        module ForceString
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailUnsubscribeGroupDeleteParams::Force::ForceString::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::EmailUnsubscribeGroupDeleteParams::Force::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
