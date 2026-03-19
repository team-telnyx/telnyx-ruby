# frozen_string_literal: true

module Telnyx
  module Resources
    # Capture and manage voice identities as clones for use in text-to-speech
    # synthesis.
    class VoiceClones
      # Creates a new voice clone by capturing the voice identity of an existing voice
      # design. The clone can then be used for text-to-speech synthesis.
      #
      # @overload create(gender:, language:, name:, voice_design_id:, request_options: {})
      #
      # @param gender [Symbol, Telnyx::Models::VoiceCloneCreateParams::Gender] Gender of the voice clone.
      #
      # @param language [String] ISO 639-1 language code for the clone (e.g. `en`, `fr`, `de`).
      #
      # @param name [String] Name for the voice clone.
      #
      # @param voice_design_id [String] UUID of the source voice design to clone.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VoiceCloneCreateResponse]
      #
      # @see Telnyx::Models::VoiceCloneCreateParams
      def create(params)
        parsed, options = Telnyx::VoiceCloneCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "voice_clones",
          body: parsed,
          model: Telnyx::Models::VoiceCloneCreateResponse,
          options: options
        )
      end

      # Updates the name, language, or gender of a voice clone.
      #
      # @overload update(id, name:, gender: nil, language: nil, request_options: {})
      #
      # @param id [String] The voice clone UUID.
      #
      # @param name [String] New name for the voice clone.
      #
      # @param gender [Symbol, Telnyx::Models::VoiceCloneUpdateParams::Gender] Updated gender for the voice clone.
      #
      # @param language [String] Updated ISO 639-1 language code or `auto`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VoiceCloneUpdateResponse]
      #
      # @see Telnyx::Models::VoiceCloneUpdateParams
      def update(id, params)
        parsed, options = Telnyx::VoiceCloneUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["voice_clones/%1$s", id],
          body: parsed,
          model: Telnyx::Models::VoiceCloneUpdateResponse,
          options: options
        )
      end

      # Returns a paginated list of voice clones belonging to the authenticated account.
      #
      # @overload list(filter_name: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_name [String] Case-insensitive substring filter on the name field.
      #
      # @param page_number [Integer] Page number for pagination (1-based).
      #
      # @param page_size [Integer] Number of results per page.
      #
      # @param sort [Symbol, Telnyx::Models::VoiceCloneListParams::Sort] Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::VoiceCloneListResponse>]
      #
      # @see Telnyx::Models::VoiceCloneListParams
      def list(params = {})
        parsed, options = Telnyx::VoiceCloneListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "voice_clones",
          query: query.transform_keys(
            filter_name: "filter[name]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::VoiceCloneListResponse,
          options: options
        )
      end

      # Permanently deletes a voice clone. This action cannot be undone.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The voice clone UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::VoiceCloneDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["voice_clones/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::VoiceCloneCreateFromUploadParams} for more details.
      #
      # Creates a new voice clone by uploading an audio file directly. Supported
      # formats: WAV, MP3, FLAC, OGG, M4A. For best results, provide 5–10 seconds of
      # clear speech. Maximum file size: 2MB.
      #
      # @overload create_from_upload(audio_file:, language:, name:, gender: nil, label: nil, ref_text: nil, request_options: {})
      #
      # @param audio_file [Pathname, StringIO, IO, String, Telnyx::FilePart] Audio file to clone the voice from. Supported formats: WAV, MP3, FLAC, OGG, M4A.
      #
      # @param language [String] ISO 639-1 language code (e.g. `en`, `fr`) or `auto` for automatic detection.
      #
      # @param name [String] Name for the voice clone.
      #
      # @param gender [Symbol, Telnyx::Models::VoiceCloneCreateFromUploadParams::Gender] Gender of the voice clone.
      #
      # @param label [String] Optional custom label describing the voice style. If omitted, falls back to the
      #
      # @param ref_text [String] Optional transcript of the audio file. Providing this improves clone quality.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::VoiceCloneCreateFromUploadResponse]
      #
      # @see Telnyx::Models::VoiceCloneCreateFromUploadParams
      def create_from_upload(params)
        parsed, options = Telnyx::VoiceCloneCreateFromUploadParams.dump_request(params)
        @client.request(
          method: :post,
          path: "voice_clones/from_upload",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Telnyx::Models::VoiceCloneCreateFromUploadResponse,
          options: options
        )
      end

      # Downloads the WAV audio sample that was used to create the voice clone.
      #
      # @overload download_sample(id, request_options: {})
      #
      # @param id [String] The voice clone UUID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Telnyx::Models::VoiceCloneDownloadSampleParams
      def download_sample(id, params = {})
        @client.request(
          method: :get,
          path: ["voice_clones/%1$s/sample", id],
          headers: {"accept" => "audio/wav"},
          model: StringIO,
          options: params[:request_options]
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
