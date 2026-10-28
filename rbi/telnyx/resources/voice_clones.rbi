# typed: strong

module Telnyx
  module Resources
    # Capture and manage voice identities as clones for use in text-to-speech
    # synthesis.
    class VoiceClones
      # Creates a new voice clone by capturing the voice identity of an existing voice
      # design. The clone can then be used for text-to-speech synthesis.
      sig do
        params(
          voice_clone_request:
            T.any(
              Telnyx::VoiceCloneCreateParams::VoiceCloneRequest::TelnyxDesignClone::OrHash,
              Telnyx::VoiceCloneCreateParams::VoiceCloneRequest::MinimaxDesignClone::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VoiceCloneResponse)
      end
      def create(
        # Request body for creating a voice clone from an existing voice design.
        voice_clone_request:,
        request_options: {}
      )
      end

      # Updates the name, language, or gender of a voice clone.
      sig do
        params(
          id: String,
          name: String,
          gender: Telnyx::VoiceCloneUpdateParams::Gender::OrSymbol,
          language: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VoiceCloneResponse)
      end
      def update(
        # The voice clone UUID.
        id,
        # New name for the voice clone.
        name:,
        # Updated gender for the voice clone.
        gender: nil,
        # Updated ISO 639-1 language code or `auto`.
        language: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of voice clones belonging to the authenticated account.
      sig do
        params(
          filter_model_id:
            Telnyx::VoiceCloneListParams::FilterModelID::OrSymbol,
          filter_name: String,
          filter_provider:
            Telnyx::VoiceCloneListParams::FilterProvider::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::VoiceCloneListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::VoiceCloneData]
        )
      end
      def list(
        # Filter by TTS model. Case-insensitive.
        filter_model_id: nil,
        # Case-insensitive substring filter on the name field.
        filter_name: nil,
        # Filter by voice synthesis provider. Case-insensitive.
        filter_provider: nil,
        # Page number for pagination (1-based).
        page_number: nil,
        # Number of results per page.
        page_size: nil,
        # Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      # Permanently deletes a voice clone. This action cannot be undone.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # The voice clone UUID.
        id,
        request_options: {}
      )
      end

      # Creates a new voice clone by uploading an audio file directly. Supported
      # formats: WAV, MP3, FLAC, OGG, M4A. Maximum file size: 20MB. Reference audio is
      # trimmed per model: Qwen3TTS, Bayan, and Resemble use the first 10 seconds, Ultra
      # uses up to 60 seconds, and Minimax accepts 10 seconds to 5 minutes. Ultra clones
      # return `202` with status `pending`; all other models return `201` with status
      # `active`. Bayan clones require `ref_text` (the exact transcript of the reference
      # audio) and support `ar` (default) and `en` only. Resemble clones
      # (`provider: resemble`) take `model_id` `Pro`, `Turbo`, or `Urdu`.
      sig do
        params(
          voice_clone_upload_request:
            T.any(
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxQwen3TtsClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxUltraClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::TelnyxBayanClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::MinimaxClone::OrHash,
              Telnyx::VoiceCloneCreateFromUploadParams::VoiceCloneUploadRequest::ResembleClone::OrHash
            ),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::VoiceCloneResponse)
      end
      def create_from_upload(
        # Multipart form data for creating a voice clone from a direct audio upload.
        # Maximum file size: 20MB.
        voice_clone_upload_request:,
        request_options: {}
      )
      end

      # Downloads the WAV audio sample that was used to create the voice clone.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def download_sample(
        # The voice clone UUID.
        id,
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
