# typed: strong

module Telnyx
  module Models
    class SimCardGetActivationCodeResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardGetActivationCodeResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::SimCardGetActivationCodeResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::SimCardGetActivationCodeResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::SimCardGetActivationCodeResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::SimCardGetActivationCodeResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCardGetActivationCodeResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Contents of the eSIM activation QR code.
        sig { returns(T.nilable(String)) }
        attr_reader :activation_code

        sig { params(activation_code: String).void }
        attr_writer :activation_code

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(activation_code: String, record_type: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Contents of the eSIM activation QR code.
          activation_code: nil,
          record_type: nil
        )
        end

        sig do
          override.returns({ activation_code: String, record_type: String })
        end
        def to_hash
        end
      end
    end
  end
end
