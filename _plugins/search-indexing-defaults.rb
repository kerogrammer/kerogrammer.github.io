# frozen_string_literal: true

# Keep low-value listing pages crawlable but out of the index and sitemap.
# Google must be able to crawl a page to see a noindex directive.

module Jekyll
  class SearchIndexingDefaults < Generator
    safe true
    priority :lowest

    NOINDEX_EXACT_URLS = %w[
      /archives/
      /categories/
      /tags/
    ].freeze

    NOINDEX_PREFIXES = %w[
      /categories/
      /tags/
    ].freeze

    def generate(site)
      indexable_items(site).each do |item|
        next unless noindex_url?(item.url)

        item.data["sitemap"] = false
        item.data["robots"] ||= "noindex, follow"
      end
    end

    private

    def indexable_items(site)
      site.pages + site.documents
    end

    def noindex_url?(url)
      normalized_url = url.to_s
      return true if NOINDEX_EXACT_URLS.include?(normalized_url)
      return true if NOINDEX_PREFIXES.any? { |prefix| normalized_url.start_with?(prefix) }
      return true if normalized_url.match?(%r{\A/page\d+/?\z})

      false
    end
  end
end
