# typed: strong

module Telnyx
  module Models
    module Queues
      class CallUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Queues::CallUpdateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :queue_name

        # Whether the call should remain in queue after hangup.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :keep_after_hangup

        sig { params(keep_after_hangup: T::Boolean).void }
        attr_writer :keep_after_hangup

        sig do
          params(
            queue_name: String,
            keep_after_hangup: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          queue_name:,
          # Whether the call should remain in queue after hangup.
          keep_after_hangup: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              queue_name: String,
              keep_after_hangup: T::Boolean,
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
