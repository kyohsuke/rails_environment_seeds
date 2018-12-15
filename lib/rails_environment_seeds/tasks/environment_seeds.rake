Rake::Task['db:seed'].enhance do
  Rake::Task['db:seed:autodetect'].invoke
end

namespace :db do
  namespace :seed do
    desc 'Loads the seed data from db/seeds/<environment>.rb if it exists.'
    task autodetect: :environment do
      Rake::Task["db:seed:#{Rails.env}"].invoke
    end

    Dir.glob(Rails.root.join('config', 'environments', '*.rb')).map { |filename| File.basename(filename, '.rb') }.each do |environment|
      desc "Loads the seed data from db/seeds/#{environment}.rb if it exists."
      task environment => :environment do
        path = Rails.root.join('db', 'seeds', "#{environment}.rb")
        load(path) if File.exist? path
      end
    end
  end
end
