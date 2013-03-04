module Evaluator
  class Parser

    def parse(evaluation_code, file_name=__FILE__, lineno=__LINE__+1)
      ActiveRecord::Base.transaction do
        instance_eval evaluation_code, file_name, lineno
      end
    end

    def evaluation(title, metadata={}, &body)
      build_evaluation(title: title, metadata: metadata, &body)
    end

    def peer_evaluation(title, metadata={}, &body)
      build_evaluation(title: title, metadata: metadata, peer: true, &body)
    end

    def code_review(reviewer, title, metadata={}, &body)
      evaluation = build_evaluation(title: title, metadata: metadata, peer: true, instructor: true, &body)

      reviewer = Person.instructor_by_github_handle(reviewer)
      Person.students.each do |student|
        evaluation.responses.build(started_at: Time.zone.now, evaluator: reviewer, evaluatee: student)
      end

      evaluation
    end

    def project_evaluation(title, metadata={}, &body)
      evaluation = Evaluation.new(title: title, metadata: metadata, project: true)

      project_url        = FillIn.new(text: "Enter the \"Git Read-Only\" URL for the project", metadata: {project_url: true}, display_order: 0)
      project_url.answer = FreeResponse.new(kind: :url, display_order: 1)
      section            = Section.new(title: "Who You're Reviewing", metadata: {}, display_order: 0)
      section.questions   << project_url
      evaluation.sections << section

      body_parser = Evaluator::Parser::EvaluationBody.new(evaluation)
      body_parser.parse(&body)

      evaluation
    end

    def instructor_evaluation(title, metadata={}, &body)
      evaluation = build_evaluation(title: title, metadata: metadata, peer: true, instructor: true, &body)
      puts "Starting IE parsing"

      Person.instructors.each do |instructor|
        Person.students.each do |student|
          evaluation.responses.build(started_at: Time.zone.now, evaluator: instructor, evaluatee: student)
        end
      end
      evaluation
    end

    def lightning_talk_proposal(group_name, title, metadata={}, &body)
      evaluation = build_evaluation(title: title, metadata: metadata, &body)

      Person.lightning_talk_students_in(group_name).each do |student|
        evaluation.responses.build(started_at: Time.zone.now, evaluator: student, evaluatee: student)
      end

      evaluation
    end

    def lightning_talk_evaluation(group_name, title, metadata={}, &body)
      evaluation = build_evaluation(title: title, metadata: metadata, peer: true, instructor: true, &body)

      Person.instructors.each do |instructor|
        Person.lightning_talk_students_in(group_name).each do |student|
          evaluation.responses.build(started_at: Time.zone.now, evaluator: instructor, evaluatee: student)
        end
      end

      evaluation
    end

    def build_evaluation(eval_attributes, &body)
      evaluation = Evaluation.new(eval_attributes)

      body_parser = Evaluator::Parser::EvaluationBody.new(evaluation)
      body_parser.parse(&body)

      evaluation
    end

  end

end
