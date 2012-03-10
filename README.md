Evaluator
----------

Create and review self-assessments for Hungry Academy students.

Please set up the following in /etc/hosts to support GitHub Oauth:

    127.0.0.1  e.ha.local
    127.0.0.1  i.ha.local
    127.0.0.1  r.ha.local

    127.0.0.1  e.hungryacademy.local
    127.0.0.1  i.hungryacademy.local
    127.0.0.1  r.hungryacademy.local

    127.0.0.1  evaluator.hungryacademy.local
    127.0.0.1  identity.hungryacademy.local
    127.0.0.1  reader.hungryacademy.local

Please use port 3000 for this app.

Importing an Evaluation
=======================

There is an example evaluation using the correct DSL available in `app/evaluations/20120308_preassessment.rb` for reference. Parse and import the evaluation by running:

    [bundle exec] rake evaluator:parse_evaluation FILE=app/evaluations/20120308_preassessment.rb
