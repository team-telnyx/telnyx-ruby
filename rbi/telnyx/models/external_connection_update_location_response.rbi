# typed: strong

module Telnyx
  module Models
    class ExternalConnectionUpdateLocationResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ExternalConnectionUpdateLocationResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data: Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :accepted_address_suggestions

        sig { params(accepted_address_suggestions: T::Boolean).void }
        attr_writer :accepted_address_suggestions

        sig { returns(T.nilable(String)) }
        attr_reader :location_id

        sig { params(location_id: String).void }
        attr_writer :location_id

        sig { returns(T.nilable(String)) }
        attr_reader :static_emergency_address_id

        sig { params(static_emergency_address_id: String).void }
        attr_writer :static_emergency_address_id

        sig do
          params(
            accepted_address_suggestions: T::Boolean,
            location_id: String,
            static_emergency_address_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          accepted_address_suggestions: nil,
          location_id: nil,
          static_emergency_address_id: nil
        )
        end

        sig do
          override.returns(
            {
              accepted_address_suggestions: T::Boolean,
              location_id: String,
              static_emergency_address_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
