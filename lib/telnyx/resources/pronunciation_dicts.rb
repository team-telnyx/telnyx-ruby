# frozen_string_literal: true

module Telnyx
  module Resources
    # Manage pronunciation dictionaries for text-to-speech synthesis. Dictionaries
    # contain alias items (text replacement) and phoneme items (IPA pronunciation
    # notation) that control how specific words are spoken.
    class PronunciationDicts
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PronunciationDictCreateParams} for more details.
      #
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
      #
      # @overload create(items:, name:, request_options: {})
      #
      # @param items [Array<Telnyx::Models::PronunciationDictCreateParams::Item::Alias, Telnyx::Models::PronunciationDictCreateParams::Item::Phoneme>] List of pronunciation items (alias or phoneme type). At least one item is requir
      #
      # @param name [String] Human-readable name. Must be unique within the organization.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PronunciationDictCreateResponse]
      #
      # @see Telnyx::Models::PronunciationDictCreateParams
      def create(params)
        parsed, options = Telnyx::PronunciationDictCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "pronunciation_dicts",
          body: parsed,
          model: Telnyx::Models::PronunciationDictCreateResponse,
          options: options
        )
      end

      # Retrieve a single pronunciation dictionary by ID.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The UUID of the pronunciation dictionary.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PronunciationDictRetrieveResponse]
      #
      # @see Telnyx::Models::PronunciationDictRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["pronunciation_dicts/%1$s", id],
          model: Telnyx::Models::PronunciationDictRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update the name and/or items of an existing pronunciation dictionary. Uses
      # optimistic locking — if the dictionary was modified concurrently, the request
      # returns 409 Conflict.
      #
      # @overload update(id, items: nil, name: nil, request_options: {})
      #
      # @param id [String] The UUID of the pronunciation dictionary.
      #
      # @param items [Array<Telnyx::Models::PronunciationDictUpdateParams::Item::Alias, Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme>] Updated list of pronunciation items (alias or phoneme type).
      #
      # @param name [String] Updated dictionary name.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PronunciationDictUpdateResponse]
      #
      # @see Telnyx::Models::PronunciationDictUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::PronunciationDictUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["pronunciation_dicts/%1$s", id],
          body: parsed,
          model: Telnyx::Models::PronunciationDictUpdateResponse,
          options: options
        )
      end

      # List all pronunciation dictionaries for the authenticated organization. Results
      # are paginated using offset-based pagination.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] Page number (1-based). Defaults to 1.
      #
      # @param page_size [Integer] Number of results per page. Defaults to 20, maximum 250.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::PronunciationDictListResponse>]
      #
      # @see Telnyx::Models::PronunciationDictListParams
      def list(params = {})
        parsed, options = Telnyx::PronunciationDictListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "pronunciation_dicts",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::PronunciationDictListResponse,
          options: options
        )
      end

      # Permanently delete a pronunciation dictionary.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The UUID of the pronunciation dictionary.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::PronunciationDictDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["pronunciation_dicts/%1$s", id],
          model: NilClass,
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
