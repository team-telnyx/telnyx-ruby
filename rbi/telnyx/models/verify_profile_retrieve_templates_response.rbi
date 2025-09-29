# typed: strong

module Telnyx
  module Models
    class VerifyProfileRetrieveTemplatesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VerifyProfileRetrieveTemplatesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::VerifyProfileRetrieveTemplatesResponse::Data]
        )
      end
      attr_accessor :data

      # A list of Verify profile message templates
      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::VerifyProfileRetrieveTemplatesResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::VerifyProfileRetrieveTemplatesResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::VerifyProfileRetrieveTemplatesResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { params(id: String, text: String).returns(T.attached_class) }
        def self.new(id: nil, text: nil)
        end

        sig { override.returns({ id: String, text: String }) }
        def to_hash
        end
      end
    end
  end
end
