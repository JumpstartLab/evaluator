desc "Parse the evaluation file given by FILE=/path/to/file"
task "evaluator:parse_evaluation" => :environment do
  text   = File.read(ENV["FILE"])
  parser = Evaluator::EvaluationParser.new

  parser.parse(text)
end
