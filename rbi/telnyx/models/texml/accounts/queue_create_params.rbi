# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class QueueCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::QueueCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # A human readable name for the queue.
          sig { returns(T.nilable(String)) }
          attr_reader :friendly_name

          sig { params(friendly_name: String).void }
          attr_writer :friendly_name

          # The maximum size of the queue.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_size

          sig { params(max_size: Integer).void }
          attr_writer :max_size

          sig do
            params(
              friendly_name: String,
              max_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # A human readable name for the queue.
            friendly_name: nil,
            # The maximum size of the queue.
            max_size: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                friendly_name: String,
                max_size: Integer,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
