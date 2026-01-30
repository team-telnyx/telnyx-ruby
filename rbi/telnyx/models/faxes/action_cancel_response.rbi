# typed: strong

module Telnyx
  module Models
    module Faxes
      class ActionCancelResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Faxes::ActionCancelResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::Models::Faxes::ActionCancelResponse::Data))
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Faxes::ActionCancelResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Faxes::ActionCancelResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Faxes::ActionCancelResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Faxes::ActionCancelResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :result

          sig { params(result: String).void }
          attr_writer :result

          sig { params(result: String).returns(T.attached_class) }
          def self.new(result: nil)
          end

          sig { override.returns({ result: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
