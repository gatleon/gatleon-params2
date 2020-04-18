require "active_support/core_ext/hash/indifferent_access"
require "gatleon/params2/version"

module Gatleon
  module Params2
    class Error < StandardError; end

    def params2
      @params2 ||= _params2_merged.with_indifferent_access
    end

    private

    def _params2_merged
      begin
        _params2_POST.merge(_params2_GET)
      rescue EOFError
        _params2_GET
      end
    end

    def _params2_GET
      request.query_parameters
    end

    def _params2_POST
      request.request_parameters
    end
  end
end
