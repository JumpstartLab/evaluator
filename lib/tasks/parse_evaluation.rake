desc "Parse the evaluation file given by FILE=/path/to/file"
task "evaluator:parse_evaluation" => :environment do
  text   = File.read(ENV["FILE"])
  parser = Evaluator::Parser.new

  parser.parse(text).save!
end

desc "Parse all evaluations in app/evaluations"
task "evaluator:parse_all_evaluations" => :environment do
  Dir[Rails.root + '/app/evaluations/*'].each do |path|
    text   = File.read(path)
    parser = Evaluator::Parser.new

    parser.parse(text).save!
  end
end
