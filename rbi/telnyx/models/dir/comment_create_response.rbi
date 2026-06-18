# typed: strong

module Telnyx
  module Models
    module Dir
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::CommentCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::Dir::DirComment) }
        attr_reader :data

        sig { params(data: Telnyx::Dir::DirComment::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Dir::DirComment::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::Dir::DirComment }) }
        def to_hash
        end
      end
    end
  end
end
