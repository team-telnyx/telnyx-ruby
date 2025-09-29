# typed: strong

module Telnyx
  module Models
    module Messages
      class RcGenerateDeeplinkResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messages::RcGenerateDeeplinkResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Messages::RcGenerateDeeplinkResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The generated deeplink URL
          sig { returns(String) }
          attr_accessor :url

          sig { params(url: String).returns(T.attached_class) }
          def self.new(
            # The generated deeplink URL
            url:
          )
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
