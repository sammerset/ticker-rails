require 'bundler/gem_tasks'
require 'fileutils'

desc 'Update the JQuery ticker Javascript and CSS files'
task :update_slider do
  def download_slider(version)
    base_url = 'https://github.com/BenjaminRH/jquery-ticker'
    puts "Downlading JQuery ticker #{version} ..."
    `curl -o vendor/assets/javascripts/jquery-ticker.js \
      #{base_url}/jquery.ticker.js`
  end

  FileUtils.mkdir_p('vendor/assets/javascripts')
  FileUtils.mkdir_p('vendor/assets/stylesheets')
  download_slider(TickerRails::Rails::VERSION)
  puts "\e[32mDone!\e[0m"
end
