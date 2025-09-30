# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class URL < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingTollfree::Verification::URL,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :url

          sig { params(url: String).returns(T.attached_class) }
          def self.new(url:)
          end

          sig { override.returns({ url: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
