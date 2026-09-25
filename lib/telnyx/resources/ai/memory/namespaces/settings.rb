# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          # How a namespace's summaries are written.
          class Settings
            # What is currently set for this namespace. `instructions: null` means none are
            # set and summaries use the neutral default.
            #
            # @overload list(namespace, request_options: {})
            #
            # @param namespace [String] The namespace. `default` exists for every organization.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::SettingListParams
            def list(namespace, params = {})
              @client.request(
                method: :get,
                path: ["ai/memory/namespaces/%1$s/settings", namespace],
                model: Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse,
                options: params[:request_options]
              )
            end

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::AI::Memory::Namespaces::SettingPatchAllParams} for more
            # details.
            #
            # Only the fields you send are changed; anything omitted is left as it is, so `{}`
            # changes nothing. Sending `instructions: null`, or an empty or whitespace-only
            # string, clears them and returns summaries to the neutral default.
            #
            # Instructions are capped at 2000 characters. A longer note is refused rather than
            # truncated, because a note cut mid-sentence is a worse steer than none. A change
            # reaches each summary the next time that summary is regenerated, not immediately.
            #
            # @overload patch_all(namespace, summary: nil, request_options: {})
            #
            # @param namespace [String] The namespace. `default` exists for every organization.
            #
            # @param summary [Telnyx::Models::AI::Memory::Namespaces::SettingPatchAllParams::Summary, nil] A partial update to a namespace's summary settings.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Memory::Namespaces::NamespaceSettingsResponse]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::SettingPatchAllParams
            def patch_all(namespace, params = {})
              parsed, options = Telnyx::AI::Memory::Namespaces::SettingPatchAllParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["ai/memory/namespaces/%1$s/settings", namespace],
                body: parsed,
                model: Telnyx::AI::Memory::Namespaces::NamespaceSettingsResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
