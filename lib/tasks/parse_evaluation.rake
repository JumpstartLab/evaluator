desc "Parse the evaluation file given by FILE=/path/to/file"
task "evaluator:parse_evaluation" => "evaluation:parse"

desc "Parse all evaluations in app/evaluations"
task "evaluator:parse_all_evaluations" => "evaluation:parse:all"

namespace :evaluation do
  desc "Parse the evaluation file given by FILE=/path/to/file"
  task :parse => :environment do

    text   = File.read(ENV["FILE"])
    parser = Evaluator::Parser.new

    count = (ENV["TIMES"] || 1).to_i
    count.times do |n|
      evaluation = parser.parse(text)
      evaluation.title += " #{n+1}" if count > 1

      evaluation.save!
    end

  end

  namespace :parse do
    desc "Parse all evaluations in app/evaluations"
    task :all => :environment do

      evaluations_path = File.join Rails.root, 'app', 'evaluations', '**', '*.rb'

      Dir[evaluations_path].each do |path|
        puts "Parsing Evaluation: #{path.gsub(Rails.root.to_s,'')}"
        begin
          text   = File.read(path)
          parser = Evaluator::Parser.new

          parser.parse(text).save!
        rescue Exception => exception
          puts "Failed to parse evaluation: #{path}\n\n#{exception}\n#{exception.backtrace.join("\n")}"
        end
      end

    end
  end
end