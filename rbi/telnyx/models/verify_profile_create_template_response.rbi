# typed: strong

module Telnyx
  module Models
    class VerifyProfileCreateTemplateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VerifyProfileCreateTemplateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::VerifyProfileCreateTemplateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::VerifyProfileCreateTemplateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::VerifyProfileCreateTemplateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::VerifyProfileCreateTemplateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::VerifyProfileCreateTemplateResponse::Data,
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
