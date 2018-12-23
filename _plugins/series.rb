module Jekyll
	class SeriesPage < Page
		def initialize(site, base, dir, series)
	      @site = site
	      @base = base
	      @dir = dir
	      @name = 'index.html'

	      self.process(@name)
	      self.read_yaml(File.join(base, '_layouts'), 'series_index.html')
	      self.data['series'] = series

	      series_title_prefix = site.config['series_title_prefix'] || 'Series: '
	      self.data['title'] = "#{series_title_prefix}#{series}"
		end
	end

	class SeriesPageGenerator < Generator
		safe true

		def generate(site)
	      if site.layouts.key? 'series_index'
	        dir = site.config['series_dir'] || 'series'
	        series = {}
	        site.posts.docs.each do |post|
	        	next if post.data.nil?
	        	next if !post.data.has_key?('series')
	        	next if post.data['series'].nil?
	        	next if post.data['series'].size <= 0
	        	next if post.data['series'].to_s.strip.length == 0
	        	if post.data['series'].is_a?(String)
		        	series_key = post.data['series']
	        		if series[series_key].is_a?(Integer)
	        			series[series_key] = series[series_key] + 1
	        		else
	        			series[series_key] = 1
	        		end
	        	end
	        end
	        puts series
	        puts site.config["paginate"]
	        puts site.config["paginate_path"]
	        paginate_count = 2 #site.config["paginate"].to_i
	        series.each_key do |s|
	        	total_pages = series[s] / paginate_count + (series[s] % paginate_count > 0 ? 1 : 0)
	        	puts "#{s} has #{series[s]} posts requiring #{total_pages} pages"
				site.pages << SeriesPage.new(site, site.source, File.join(dir, s), s)
			end
	      end  
        end
	end
end