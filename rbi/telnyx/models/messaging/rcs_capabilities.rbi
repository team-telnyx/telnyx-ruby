# typed: strong

module Telnyx
  module Models
    module Messaging
      class RcsCapabilities < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Messaging::RcsCapabilities, Telnyx::Internal::AnyHash)
          end

        # RCS agent ID
        sig { returns(T.nilable(String)) }
        attr_reader :agent_id

        sig { params(agent_id: String).void }
        attr_writer :agent_id

        # RCS agent name
        sig { returns(T.nilable(String)) }
        attr_reader :agent_name

        sig { params(agent_name: String).void }
        attr_writer :agent_name

        # List of RCS capabilities
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :features

        sig { params(features: T::Array[String]).void }
        attr_writer :features

        # Phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Identifies the type of the resource
        sig do
          returns(
            T.nilable(
              Telnyx::Messaging::RcsCapabilities::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Messaging::RcsCapabilities::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            agent_id: String,
            agent_name: String,
            features: T::Array[String],
            phone_number: String,
            record_type:
              Telnyx::Messaging::RcsCapabilities::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # RCS agent ID
          agent_id: nil,
          # RCS agent name
          agent_name: nil,
          # List of RCS capabilities
          features: nil,
          # Phone number
          phone_number: nil,
          # Identifies the type of the resource
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              agent_id: String,
              agent_name: String,
              features: T::Array[String],
              phone_number: String,
              record_type:
                Telnyx::Messaging::RcsCapabilities::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Identifies the type of the resource
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Messaging::RcsCapabilities::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RCS_CAPABILITIES =
            T.let(
              :"rcs.capabilities",
              Telnyx::Messaging::RcsCapabilities::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Messaging::RcsCapabilities::RecordType::TaggedSymbol
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
