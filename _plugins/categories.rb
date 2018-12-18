module Categories

	class CategoryPage < Jekyll::Page
		def initalize(site, base, dir, category)
	      @site = site
	      @base = base
	      @dir = dir
	      @name = 'index.html'

	        	puts "two"
	      self.process(@name)
	        	puts "three"
	      self.read_yaml(File.join(base, '_layouts'), 'category_index.html')
	      self.data['category'] = category

	      category_title_prefix = site.config['category_title_prefix'] || 'Category: '
	      self.data['title'] = "#{category_title_prefix}#{category}"
		end
	end


	class CategoryPageGenerator < Jekyll::Generator
		def generate(site)
	      if site.layouts.key? 'category_index'
	        dir = site.config['category_dir'] || 'categories'
	        site.categories.each_key do |category|
	        	puts "one"
	          site.pages << CategoryPage.new(site, site.source, File.join(dir, category), category)
	        	puts "four"
	        end
	      end  
        end
	end
end