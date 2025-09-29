# typed: strong

module Telnyx
  module Models
    class PortabilityCheckRunResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortabilityCheckRunResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::PortabilityCheckRunResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::PortabilityCheckRunResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::PortabilityCheckRunResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: T::Array[Telnyx::Models::PortabilityCheckRunResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortabilityCheckRunResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Indicates whether this phone number is FastPort eligible
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fast_portable

        sig { params(fast_portable: T::Boolean).void }
        attr_writer :fast_portable

        # If this phone number is not portable, explains why. Empty string if the number
        # is portable.
        sig { returns(T.nilable(String)) }
        attr_reader :not_portable_reason

        sig { params(not_portable_reason: String).void }
        attr_writer :not_portable_reason

        # The +E.164 formatted phone number this result is about
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Indicates whether this phone number is portable
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :portable

        sig { params(portable: T::Boolean).void }
        attr_writer :portable

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            fast_portable: T::Boolean,
            not_portable_reason: String,
            phone_number: String,
            portable: T::Boolean,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates whether this phone number is FastPort eligible
          fast_portable: nil,
          # If this phone number is not portable, explains why. Empty string if the number
          # is portable.
          not_portable_reason: nil,
          # The +E.164 formatted phone number this result is about
          phone_number: nil,
          # Indicates whether this phone number is portable
          portable: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              fast_portable: T::Boolean,
              not_portable_reason: String,
              phone_number: String,
              portable: T::Boolean,
              record_type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
