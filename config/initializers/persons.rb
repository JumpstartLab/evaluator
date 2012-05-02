module Evaluator
  ADMINS = %w(jcasimir mattyoho)
  GUESTS = %w(jaw6 mig)
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
            JanKoszewski) + GUESTS

  STUDENTS = PEOPLE - ADMINS - GUESTS

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
            JanKoszewski
            )}

  TALK_GROUPS = {'group 1' => %w(
            cstrahan
            chrismanderson
            MikeSilvis
            athal7
            conanr
            mrgilman
            1337807
            JanKoszewski
            ),
            'group 2' => %w(
            marktabler
            maryelizbeth
            darrellrivera
            austenito
            eweng
            tkiefhaber
            mikesea
            Andrewglass1
            ),
            'group 3' => %w(
            worace
            tyre
            nisargshah100
            dkaufman
            eliseworthy
            travisvalentine
            adigitalnative
            verdi327
            )}
end
