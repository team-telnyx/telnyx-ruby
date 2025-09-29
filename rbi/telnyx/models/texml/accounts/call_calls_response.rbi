# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallCallsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::Accounts::CallCallsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          sig do
            params(from: String, status: String, to: String).returns(
              T.attached_class
            )
          end
          def self.new(from: nil, status: nil, to: nil)
          end

          sig { override.returns({ from: String, status: String, to: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
