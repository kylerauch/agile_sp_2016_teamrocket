namespace :db do 
    desc 'Puts default categories into FlashCard database'
    task import_categories: :environment do
        Category.create name: 'History'
        Category.create name: 'Language'
        Category.create name: 'Literature'
        Category.create name: 'Math'
        Category.create name: 'Science'
        Category.create name: 'Music'
        Category.create name: 'Movies'
        Category.create name: 'Sports'
        
        puts 'Created categories'
    end
end