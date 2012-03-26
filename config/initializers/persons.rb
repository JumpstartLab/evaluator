module Evaluator
  ADMINS = %w(jcasimir mattyoho)
  PEOPLE = %w(mattyoho
            jcasimir
            marktabler
            worace
            cstrahan
            chrismanderson
            MikeSilvis
            tyre
            nisargshah100
            dkaufman
            athal7
            conanr
            maryelizbeth
            eliseworthy
            darrellrivera
            austenito
            mrgilman
            eweng
            tkiefhaber
            mikesea
            travisvalentine
            1337807
            Andrewglass1
            adigitalnative
            verdi327
            JanKoszewski)

  STUDENTS = PEOPLE - ADMINS

  GROUPS = {'jcasimir' => %w(
            marktabler
            worace
            nisargshah100
            dkaufman
            maryelizbeth
            eliseworthy
            darrellrivera
            austenito
            eweng
            tkiefhaber
            travisvalentine
            verdi327
            ),

            'mattyoho' => %w(
            cstrahan
            chrismanderson
            MikeSilvis
            tyre
            athal7
            conanr
            mrgilman
            mikesea
            1337807
            Andrewglass1
            adigitalnative
            JanKoszewski)}
end
