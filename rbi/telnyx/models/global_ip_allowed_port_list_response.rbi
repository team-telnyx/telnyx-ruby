# typed: strong

module Telnyx
  module Models
    class GlobalIPAllowedPortListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPAllowedPortListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::GlobalIPAllowedPortListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPAllowedPortListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPAllowedPortListResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::GlobalIPAllowedPortListResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPAllowedPortListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # First port of a range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :first_port

        sig { params(first_port: Integer).void }
        attr_writer :first_port

        # Last port of a range.
        sig { returns(T.nilable(Integer)) }
        attr_reader :last_port

        sig { params(last_port: Integer).void }
        attr_writer :last_port

        # A name for the Global IP ports range.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The Global IP Protocol code.
        sig { returns(T.nilable(String)) }
        attr_reader :protocol_code

        sig { params(protocol_code: String).void }
        attr_writer :protocol_code

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            first_port: Integer,
            last_port: Integer,
            name: String,
            protocol_code: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # First port of a range.
          first_port: nil,
          # Last port of a range.
          last_port: nil,
          # A name for the Global IP ports range.
          name: nil,
          # The Global IP Protocol code.
          protocol_code: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              first_port: Integer,
              last_port: Integer,
              name: String,
              protocol_code: String,
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
