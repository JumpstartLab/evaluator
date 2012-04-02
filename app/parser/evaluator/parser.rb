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

    def instructor_evaluation(title, metadata={}, &body)
      evaluation = build_evaluation(title: title, metadata: metadata, peer: true, instructor: true, &body)

      Person.each_group do |instructor, students|
        students.each do |student|
          evaluation.responses.build(started_at: Time.zone.now, evaluator: instructor, evaluatee: student)
        end
      end

      evaluation
    end

    def lightning_talk_proposal(instructor_handle, title, metadata={}, &body)
      evaluation = build_evaluation(title: title, metadata: metadata, &body)

      instructor = Person.instructor_by_github_handle(instructor_handle)
      Person.students_for(instructor).each do |student|
        evaluation.responses.build(started_at: Time.zone.now, evaluator: student, evaluatee: student)
      end

      evaluation
    end

    def lightning_talk_evaluation(instructor_handle, title, metadata={}, &body)
      evaluation = build_evaluation(title: title, metadata: metadata, peer: true, instructor: true, &body)

      group_instructor = Person.instructor_by_github_handle(instructor_handle)
      Person.instructors.each do |instructor|
        Person.students_for(group_instructor).each do |student|
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
