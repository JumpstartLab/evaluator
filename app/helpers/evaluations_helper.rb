module EvaluationsHelper
  def link_text(response)
    text = response.evaluator.to_s
    text += " - for #{response.evaluatee}" if response.for_peer?
    text
  end
end
