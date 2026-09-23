# typed: strong

module Telnyx
  module Models
    module Texml
      class CallCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Texml::CallCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The call control ID of the created call.
        sig { returns(String) }
        attr_accessor :call_sid

        # The caller address.
        sig { returns(String) }
        attr_accessor :from

        # The initial status of the outbound call.
        sig do
          returns(
            Telnyx::Models::Texml::CallCreateResponse::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The called address.
        sig { returns(String) }
        attr_accessor :to

        sig do
          params(
            call_sid: String,
            from: String,
            status: Telnyx::Models::Texml::CallCreateResponse::Status::OrSymbol,
            to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The call control ID of the created call.
          call_sid:,
          # The caller address.
          from:,
          # The initial status of the outbound call.
          status:,
          # The called address.
          to:
        )
        end

        sig do
          override.returns(
            {
              call_sid: String,
              from: String,
              status:
                Telnyx::Models::Texml::CallCreateResponse::Status::TaggedSymbol,
              to: String
            }
          )
        end
        def to_hash
        end

        # The initial status of the outbound call.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::Texml::CallCreateResponse::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Telnyx::Models::Texml::CallCreateResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Texml::CallCreateResponse::Status::TaggedSymbol
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
