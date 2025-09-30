# typed: strong

module Telnyx
  module Models
    class PortoutListRejectionCodesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PortoutListRejectionCodesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::PortoutListRejectionCodesResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortoutListRejectionCodesResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PortoutListRejectionCodesResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::PortoutListRejectionCodesResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PortoutListRejectionCodesResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :code

        sig { params(code: Integer).void }
        attr_writer :code

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :reason_required

        sig { params(reason_required: T::Boolean).void }
        attr_writer :reason_required

        sig do
          params(
            code: Integer,
            description: String,
            reason_required: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(code: nil, description: nil, reason_required: nil)
        end

        sig do
          override.returns(
            { code: Integer, description: String, reason_required: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
