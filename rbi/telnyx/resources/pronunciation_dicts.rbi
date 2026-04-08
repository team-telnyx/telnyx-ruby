# typed: strong

module Telnyx
  module Resources
    # Manage pronunciation dictionaries for text-to-speech synthesis. Dictionaries
    # contain alias items (text replacement) and phoneme items (IPA pronunciation
    # notation) that control how specific words are spoken.
    class PronunciationDicts
      # Create a new pronunciation dictionary for the authenticated organization. Each
      # dictionary contains a list of items that control how specific words are spoken.
      # Items can be alias type (text replacement) or phoneme type (IPA pronunciation
      # notation).
      #
      # As an alternative to providing items directly as JSON, you can upload a
      # dictionary file (PLS/XML or plain text format, max 1MB) using
      # multipart/form-data. PLS files use the standard W3C Pronunciation Lexicon
      # Specification XML format. Text files use a line-based format: `word=alias` for
      # aliases, `word:/phoneme/` for IPA phonemes.
      #
      # Limits:
      #
      # - Maximum 50 dictionaries per organization
      # - Maximum 100 items per dictionary
      # - Text: max 200 characters
      # - Alias/phoneme value: max 500 characters
      # - File upload: max 1MB (1,048,576 bytes)
      sig do
        params(
          items:
            T::Array[
              T.any(
                Telnyx::PronunciationDictAliasItem::OrHash,
                Telnyx::PronunciationDictPhonemeItem::OrHash
              )
            ],
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PronunciationDictCreateResponse)
      end
      def create(
        # List of pronunciation items (alias or phoneme type). At least one item is
        # required.
        items:,
        # Human-readable name. Must be unique within the organization.
        name:,
        request_options: {}
      )
      end

      # Retrieve a single pronunciation dictionary by ID.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PronunciationDictRetrieveResponse)
      end
      def retrieve(
        # The UUID of the pronunciation dictionary.
        id,
        request_options: {}
      )
      end

      # Update the name and/or items of an existing pronunciation dictionary. Uses
      # optimistic locking — if the dictionary was modified concurrently, the request
      # returns 409 Conflict.
      sig do
        params(
          id: String,
          items:
            T::Array[
              T.any(
                Telnyx::PronunciationDictAliasItem::OrHash,
                Telnyx::PronunciationDictPhonemeItem::OrHash
              )
            ],
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PronunciationDictUpdateResponse)
      end
      def update(
        # The UUID of the pronunciation dictionary.
        id,
        # Updated list of pronunciation items (alias or phoneme type).
        items: nil,
        # Updated dictionary name.
        name: nil,
        request_options: {}
      )
      end

      # List all pronunciation dictionaries for the authenticated organization. Results
      # are paginated using offset-based pagination.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::PronunciationDictData]
        )
      end
      def list(
        # Page number (1-based). Defaults to 1.
        page_number: nil,
        # Number of results per page. Defaults to 20, maximum 250.
        page_size: nil,
        request_options: {}
      )
      end

      # Permanently delete a pronunciation dictionary.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
        # The UUID of the pronunciation dictionary.
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
