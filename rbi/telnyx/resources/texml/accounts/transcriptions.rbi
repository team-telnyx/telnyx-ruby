# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Transcriptions
          sig do
            returns(Telnyx::Resources::Texml::Accounts::Transcriptions::Json)
          end
          attr_reader :json

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
