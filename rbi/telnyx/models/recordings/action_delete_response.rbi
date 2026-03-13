# typed: strong

module Telnyx
  module Models
    module Recordings
      class ActionDeleteResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Recordings::ActionDeleteResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Recordings::ActionDeleteResponse::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::Recordings::ActionDeleteResponse::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            status:
              Telnyx::Models::Recordings::ActionDeleteResponse::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(status: nil)
        end

        sig do
          override.returns(
            {
              status:
                Telnyx::Models::Recordings::ActionDeleteResponse::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Recordings::ActionDeleteResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OK =
            T.let(
              :ok,
              Telnyx::Models::Recordings::ActionDeleteResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Recordings::ActionDeleteResponse::Status::TaggedSymbol
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
