# typed: strong

module Telnyx
  module Models
    module AI
      class ObservabilityReq < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ObservabilityReq, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :host

        sig { params(host: String).void }
        attr_writer :host

        sig { returns(T.nilable(String)) }
        attr_reader :public_key_ref

        sig { params(public_key_ref: String).void }
        attr_writer :public_key_ref

        sig { returns(T.nilable(String)) }
        attr_reader :secret_key_ref

        sig { params(secret_key_ref: String).void }
        attr_writer :secret_key_ref

        sig do
          returns(T.nilable(Telnyx::AI::ObservabilityReq::Status::OrSymbol))
        end
        attr_reader :status

        sig do
          params(status: Telnyx::AI::ObservabilityReq::Status::OrSymbol).void
        end
        attr_writer :status

        sig do
          params(
            host: String,
            public_key_ref: String,
            secret_key_ref: String,
            status: Telnyx::AI::ObservabilityReq::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          host: nil,
          public_key_ref: nil,
          secret_key_ref: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              host: String,
              public_key_ref: String,
              secret_key_ref: String,
              status: Telnyx::AI::ObservabilityReq::Status::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::AI::ObservabilityReq::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(:enabled, Telnyx::AI::ObservabilityReq::Status::TaggedSymbol)
          DISABLED =
            T.let(:disabled, Telnyx::AI::ObservabilityReq::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::ObservabilityReq::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
