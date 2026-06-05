# typed: strong

module Telnyx
  module Resources
    class Enterprises
      class Dir
        class Comments
          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
