module Series

	class SeriesPage < Jekyll::Page
		def initalize(site, base, dir, series)
			@site = site
			@base = base
			@dir = dir
			@name = 'index.html'

			self.process(@name)
		end
	end


	class SeriesPageGenerator < Jekyll::Generator
		def generate(site)
		end
	end
end