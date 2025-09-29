# typed: strong

module Telnyx
  module Models
    class GlobalIPProtocolListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPProtocolListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::GlobalIPProtocolListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::GlobalIPProtocolListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::GlobalIPProtocolListResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: T::Array[Telnyx::Models::GlobalIPProtocolListResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPProtocolListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A name for Global IP Protocol.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The Global IP Protocol code.
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(code: String, name: String, record_type: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The Global IP Protocol code.
          code: nil,
          # A name for Global IP Protocol.
          name: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns({ code: String, name: String, record_type: String })
        end
        def to_hash
        end
      end
    end
  end
end
