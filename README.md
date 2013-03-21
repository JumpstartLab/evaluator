# Evaluator

Create and review self-assessments for Jumpstart Lab students.

## Configuration

### GitHub

This application uses GitHub for authentication. This requires you to specify a valid GitHub application (secret & key).

Settings can be defined in the **config/github.yml** file:

```yaml
development: &default
  key: '33f9f1839922ff589b2a'
  secret: '00de8ac3813c0087f0a4bc7efcff9296af44cd0d'
production:
```

###

Importing an Evaluation
=======================

There is an example evaluation using the correct DSL available in `app/evaluations/20120308_preassessment.rb` for reference. Parse and import the evaluation by running:

    [bundle exec] rake evaluator:parse_evaluation FILE=app/evaluations/20120308_preassessment.rb
