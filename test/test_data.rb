# frozen_string_literal: true

module Telnyx
  module TestData
    def make_error(code, title, detail)
      {
        errors: [
          {
            code: code,
            title: title,
            detail: detail,
          },
        ],
      }
    end

    def make_invalid_api_key_error
      {
        errors: [
          {
            title: "Authentication failed",
            detail: "The required authentication headers were either invalid or not included in the request.",
            code: "10009",
          },
        ],
      }
    end

    def make_invalid_id_error
      {
        errors: [
          {
            code: "10006",
            title: "Invalid ID",
            detail: "The resource ID provided was invalid.",
          },
        ],
      }
    end

    def make_authentication_failed_error
      {
        errors: [
          {
            title: "Authentication failed",
            detail: "The required authentication headers were either invalid or not included in the request.",
            code: "10009",
          },
        ],
      }
    end

    def make_authorization_failed_error
      {
        errors: [
          {
            title: "Authorization failed",
            detail: "You do not have permission to perform the requested action on the specified resource or resources.",
            code: "10010",
          },
        ],
      }
    end

    def make_resource_not_found_error
      {
        errors: [
          {
            title: "Resource not found",
            detail: "The requested resource or URL could not be found.",
            code: "10005",
          },
        ],
      }
    end

    def make_method_not_supported_error
      {
        errors: [
          {
            title: "Method not allowed",
            detail: "The URL is valid, but the method is not allowed.",
            code: "10030",
          },
        ],
      }
    end

    def make_rate_limit_error
      {
        errors: [
          {
            title: "Too many requests",
            detail: "You have exceeded the maximum number of allowed requests.",
            code: "10011",
          },
        ],
      }
    end

    def make_timeout_error
      {
        errors: [
          {
            title: "Request timeout",
            detail: "The request timed out.",
            code: "10008",
          },
        ],
      }
    end

    def make_parameters_error
      {
        errors: [
          {
            title: "Missing required parameter",
            detail: "A required parameter was missing.",
            code: "10004",
          },
        ],
      }
    end

    def make_service_unavailable_error
      {
        errors: [
          {
            title: "Service unavailable",
            detail: "The service is not available.",
            code: "",
          },
        ],
      }
    end

    def make_api_error
      {
        errors: [
          {
            title: "Unexpected error",
            detail: "An unexpected error occured.",
            code: "10007",
          },
        ],
      }
    end
  end
end
