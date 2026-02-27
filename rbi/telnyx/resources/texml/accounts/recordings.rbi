# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        class Recordings
          # TeXML REST Commands
          sig { returns(Telnyx::Resources::Texml::Accounts::Recordings::Json) }
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
