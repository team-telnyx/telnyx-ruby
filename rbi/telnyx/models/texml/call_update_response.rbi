# typed: strong

module Telnyx
  module Models
    module Texml
      class CallUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Texml::CallUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::Models::Texml::CallUpdateResponse::Data))
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Texml::CallUpdateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Texml::CallUpdateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Texml::CallUpdateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::CallUpdateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :sid

          sig { params(sid: String).void }
          attr_writer :sid

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig { params(sid: String, status: String).returns(T.attached_class) }
          def self.new(sid: nil, status: nil)
          end

          sig { override.returns({ sid: String, status: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
