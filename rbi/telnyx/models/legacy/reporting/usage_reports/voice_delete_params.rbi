# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class VoiceDeleteParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::VoiceDeleteParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              params(request_options: Telnyx::RequestOptions::OrHash).returns(
                T.attached_class
              )
            end
            def self.new(request_options: {})
            end

            sig do
              override.returns({ request_options: Telnyx::RequestOptions })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
