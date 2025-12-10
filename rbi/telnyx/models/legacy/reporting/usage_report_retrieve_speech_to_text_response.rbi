# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        class UsageReportRetrieveSpeechToTextResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Legacy::Reporting::UsageReportRetrieveSpeechToTextResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :data

          sig { params(data: T::Hash[Symbol, T.anything]).void }
          attr_writer :data

          sig do
            params(data: T::Hash[Symbol, T.anything]).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig { override.returns({ data: T::Hash[Symbol, T.anything] }) }
          def to_hash
          end
        end
      end
    end
  end
end
