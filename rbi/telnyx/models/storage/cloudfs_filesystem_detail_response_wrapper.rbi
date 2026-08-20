# typed: strong

module Telnyx
  module Models
    module Storage
      class CloudfsFilesystemDetailResponseWrapper < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper,
              Telnyx::Internal::AnyHash
            )
          end

        # A CloudFS filesystem as returned by get, update, and delete. `meta_url` omits
        # the credential and there is no `meta_token` field — the token is only returned
        # by create and rotate-meta-token.
        sig { returns(T.nilable(Telnyx::Storage::CloudfsFilesystemDetail)) }
        attr_reader :data

        sig do
          params(data: Telnyx::Storage::CloudfsFilesystemDetail::OrHash).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Storage::CloudfsFilesystemDetail::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A CloudFS filesystem as returned by get, update, and delete. `meta_url` omits
          # the credential and there is no `meta_token` field — the token is only returned
          # by create and rotate-meta-token.
          data: nil
        )
        end

        sig do
          override.returns({ data: Telnyx::Storage::CloudfsFilesystemDetail })
        end
        def to_hash
        end
      end
    end
  end
end
