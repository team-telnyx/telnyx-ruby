# typed: strong

module Telnyx
  module Models
    class AIRetrieveModelsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AIRetrieveModelsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::Models::AIRetrieveModelsResponse::Data]) }
      attr_accessor :data

      sig { returns(T.nilable(String)) }
      attr_reader :object

      sig { params(object: String).void }
      attr_writer :object

      sig do
        params(
          data:
            T::Array[Telnyx::Models::AIRetrieveModelsResponse::Data::OrHash],
          object: String
        ).returns(T.attached_class)
      end
      def self.new(data:, object: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::AIRetrieveModelsResponse::Data],
            object: String
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AIRetrieveModelsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Integer) }
        attr_accessor :created

        sig { returns(String) }
        attr_accessor :owned_by

        sig { returns(T.nilable(String)) }
        attr_reader :object

        sig { params(object: String).void }
        attr_writer :object

        sig do
          params(
            id: String,
            created: Integer,
            owned_by: String,
            object: String
          ).returns(T.attached_class)
        end
        def self.new(id:, created:, owned_by:, object: nil)
        end

        sig do
          override.returns(
            { id: String, created: Integer, owned_by: String, object: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
