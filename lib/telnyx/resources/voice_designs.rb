# frozen_string_literal: true

module Telnyx
  module Resources
    # Create and manage AI-generated voice designs using natural language prompts.
    class VoiceDesigns
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VoiceDesignCreateParams} for more details.
      #
      # Creates a new voice design (version 1) when `voice_design_id` is omitted. When
      # `voice_design_id` is provided, adds a new version to the existing design
      # instead. A design can have at most 50 versions.
      #
      # @overload create(prompt:, text:, language: nil, max_new_tokens: nil, name: nil, provider: nil, repetition_penalty: nil, temperature: nil, top_k: nil, top_p: nil, voice_design_id: nil, request_options: {})
      #
      # @param prompt [String] Natural language description of the voice style, e.g. 'Speak in a warm, friendly
      #
      # @param text [String] Sample text to synthesize for this voice design.
      #
      # @param language [String] Language for synthesis. Supported values: Auto, Chinese, English, Japanese, Kore
      #
      # @param max_new_tokens [Integer] Maximum number of tokens to generate. Default: 2048.
      #
      # @param name [String] Name for the voice design. Required when creating a new design (`voice_design_id
      #
      # @param provider [Symbol, Telnyx::Models::VoiceDesignCreateParams::Provider] Voice synthesis provider. `telnyx` uses the Qwen3TTS model; `minimax` uses the M
      #
      # @param repetition_penalty [Float] Repetition penalty to reduce repeated patterns in generated audio. Default: 1.05
      #
      # @param temperature [Float] Sampling temperature controlling randomness. Higher values produce more varied o
      #
      # @param top_k [Integer] Top-k sampling parameter — limits the token vocabulary considered at each step.
      #
      # @param top_p [Float] Top-p (nucleus) sampling parameter — cumulative probability cutoff for token sel
      #
      # @param voice_design_id [String] ID of an existing voice design to add a new version to. When provided, a new ver
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VoiceDesignCreateResponse]
      #
      # @see Telnyx::Models::VoiceDesignCreateParams
      def create(params)
        parsed, options = Telnyx::VoiceDesignCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "voice_designs",
          body: parsed,
          model: Telnyx::Models::VoiceDesignCreateResponse,
          options: options
        )
      end

      # Returns the latest version of a voice design, or a specific version when
      # `?version=N` is provided. The `id` parameter accepts either a UUID or the design
      # name.
      #
      # @overload retrieve(id, version: nil, request_options: {})
      #
      # @param id [String] The voice design UUID or name.
      #
      # @param version [Integer] Specific version number to retrieve. Defaults to the latest version.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VoiceDesignRetrieveResponse]
      #
      # @see Telnyx::Models::VoiceDesignRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Telnyx::VoiceDesignRetrieveParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["voice_designs/%1$s", id],
          query: query,
          model: Telnyx::Models::VoiceDesignRetrieveResponse,
          options: options
        )
      end

      # Returns a paginated list of voice designs belonging to the authenticated
      # account.
      #
      # @overload list(filter_name: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_name [String] Case-insensitive substring filter on the name field.
      #
      # @param page_number [Integer] Page number for pagination (1-based).
      #
      # @param page_size [Integer] Number of results per page.
      #
      # @param sort [Symbol, Telnyx::Models::VoiceDesignListParams::Sort] Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::VoiceDesignListResponse>]
      #
      # @see Telnyx::Models::VoiceDesignListParams
      def list(params = {})
        parsed, options = Telnyx::VoiceDesignListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "voice_designs",
          query: query.transform_keys(
            filter_name: "filter[name]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::VoiceDesignListResponse,
          options: options
        )
      end

      # Permanently deletes a voice design and all of its versions. This action cannot
      # be undone.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The voice design UUID or name.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::VoiceDesignDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["voice_designs/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Permanently deletes a specific version of a voice design. The version number
      # must be a positive integer.
      #
      # @overload delete_version(version, id:, request_options: {})
      #
      # @param version [Integer] The version number to delete.
      #
      # @param id [String] The voice design UUID or name.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::VoiceDesignDeleteVersionParams
      def delete_version(version, params)
        parsed, options = Telnyx::VoiceDesignDeleteVersionParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["voice_designs/%1$s/versions/%2$s", id, version],
          model: NilClass,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VoiceDesignDownloadSampleParams} for more details.
      #
      # Downloads the WAV audio sample for the voice design. Returns the latest
      # version's sample by default, or a specific version when `?version=N` is
      # provided. The `id` parameter accepts either a UUID or the design name.
      #
      # @overload download_sample(id, version: nil, request_options: {})
      #
      # @param id [String] The voice design UUID or name.
      #
      # @param version [Integer] Specific version number to download the sample for. Defaults to the latest versi
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::VoiceDesignDownloadSampleParams
      def download_sample(id, params = {})
        parsed, options = Telnyx::VoiceDesignDownloadSampleParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["voice_designs/%1$s/sample", id],
          query: query,
          headers: {"accept" => "audio/wav"},
          model: StringIO,
          options: options
        )
      end

      # Updates the name of a voice design. All versions retain their other properties.
      #
      # @overload rename(id, name:, request_options: {})
      #
      # @param id [String] The voice design UUID or name.
      #
      # @param name [String] New name for the voice design.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VoiceDesignRenameResponse]
      #
      # @see Telnyx::Models::VoiceDesignRenameParams
      def rename(id, params)
        parsed, options = Telnyx::VoiceDesignRenameParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["voice_designs/%1$s", id],
          body: parsed,
          model: Telnyx::Models::VoiceDesignRenameResponse,
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
