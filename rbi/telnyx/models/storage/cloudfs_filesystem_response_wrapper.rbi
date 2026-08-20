# typed: strong

module Telnyx
  module Models
    module Storage
      class CloudfsFilesystemResponseWrapper < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::CloudfsFilesystemResponseWrapper,
              Telnyx::Internal::AnyHash
            )
          end

        # A CloudFS filesystem, including its metadata credential. This shape is returned
        # only by create and rotate-meta-token.
        sig { returns(T.nilable(Telnyx::Storage::CloudfsFilesystem)) }
        attr_reader :data

        sig { params(data: Telnyx::Storage::CloudfsFilesystem::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Storage::CloudfsFilesystem::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # A CloudFS filesystem, including its metadata credential. This shape is returned
          # only by create and rotate-meta-token.
          data: nil
        )
        end

        sig { override.returns({ data: Telnyx::Storage::CloudfsFilesystem }) }
        def to_hash
        end
      end
    end
  end
end
