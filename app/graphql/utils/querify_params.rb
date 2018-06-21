module Utils
  module QuerifyParams
    def self.querify_options(options_hash)
      querified_hash = {}
      options_hash.symbolize_keys!
      if options_hash[:leadStatus].present?
        querified_hash[:is_archived] = options_hash[:leadStatus] == 'ARCHIVED'
        querified_hash.delete(:is_archived) if options_hash[:leadStatus] == 'ALL'
      end

      querified_hash[:location_id] = options_hash[:locationIds]
      querified_hash
    end

    def self.querify_pagination(leads, pagination_hash)
      page = pagination_hash[:page] || 1
      limit = pagination_hash[:limit] || 20

      leads.page(page).limit(limit)
    end
  end
end
