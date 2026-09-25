# typed: strong

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          # How a namespace's summaries are written.
          class Settings
            # What is currently set for this namespace. `instructions: null` means none are
            # set and summaries use the neutral default.
            sig do
              params(
                namespace: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse
              )
            end
            def list(
              # The namespace. `default` exists for every organization.
              namespace,
              request_options: {}
            )
            end

            # Only the fields you send are changed; anything omitted is left as it is, so `{}`
            # changes nothing. Sending `instructions: null`, or an empty or whitespace-only
            # string, clears them and returns summaries to the neutral default.
            #
            # Instructions are capped at 2000 characters. A longer note is refused rather than
            # truncated, because a note cut mid-sentence is a worse steer than none. A change
            # reaches each summary the next time that summary is regenerated, not immediately.
            sig do
              params(
                namespace: String,
                summary:
                  T.nilable(
                    Telnyx::AI::Memory::Namespaces::SettingPatchAllParams::Summary::OrHash
                  ),
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse
              )
            end
            def patch_all(
              # The namespace. `default` exists for every organization.
              namespace,
              # A partial update to a namespace's summary settings.
              #
              # Only the fields present in the request are changed; the rest are left as they
              # are. Sending `instructions: null` (or empty) clears the instructions.
              summary: nil,
              request_options: {}
            )
            end

            # @api private
            sig { params(client: Telnyx::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
