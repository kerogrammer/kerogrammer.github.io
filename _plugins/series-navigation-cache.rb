#!/usr/bin/env ruby
#
# Cache series navigation data once per build so templates do not
# repeatedly scan every post during rendering.

Jekyll::Hooks.register :site, :post_read do |site|
  series_map = site.posts.docs
    .select { |post| post.data['series'] && !post.data['series'].to_s.empty? }
    .group_by { |post| post.data['series'] }
    .transform_values { |posts| posts.sort_by(&:date) }

  site.posts.docs.each do |post|
    series = post.data['series']
    next unless series_map.key?(series)

    post.data['series_posts'] = series_map[series]
  end
end
