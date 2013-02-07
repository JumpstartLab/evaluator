module Evaluator
  ADMINS = %w(jcasimir mattyoho steveklabnik kytrinyx burtlo)
  GUESTS = %w()
  STUDENTS = [
              'blairand',  # Blair Anderson
              'pnblackwell',  # Paul Blackwell
              'philbattos',  # Phil Battos
              'ebdrummond',  # Erin Drummond
              'jdendroid',  # James Denman
              '7maples',  # Jennifer Eliuk
              'danny-g',  # Danny Garcia
              'kareemgrant',  # Kareem Grant
              'SerKnight',  # Christopher Knight
              'ckoml',  # Chelsea Komlo
              'jemaddux',  # John Maddux
              'aimzatron',  # Aimee Maher
              'jmejia',  # Josh Mejia
              'danmee10',  # Daniel Mee
              'ronra',  # Ron Rateau
              'phoenixbox',  # Shane Rogers
              'thesteady',  # Laura Steadman
              'gschorkopf',  # Geoffrey Schorkopf
              'kylesuss',  # Kyle Suss
              'Diasporism',  # Logan Sears
              'bradpsheehan',  # Bradley Sheehan
              'lalalainexd',  # Elaine Tai
              'novohispano',  # Jorge Tellez
              'raphweiner'  # Raphael Weiner
            ]

  PEOPLE = STUDENTS + ADMINS + GUESTS

  # PEOPLE = %w(mattyoho
  #           jcasimir
  #           steveklabnik
  #           marktabler
  #           worace
  #           cstrahan
  #           chrismanderson
  #           MikeSilvis
  #           tyre
  #           nisargshah100
  #           dkaufman
  #           athal7
  #           conanr
  #           maryelizbeth
  #           eliseworthy
  #           darrellrivera
  #           austenito
  #           mrgilman
  #           eweng
  #           tkiefhaber
  #           mikesea
  #           travisvalentine
  #           1337807
  #           Andrewglass1
  #           adigitalnative
  #           verdi327
  #           JanKoszewski) + GUESTS

  # STUDENTS = PEOPLE - ADMINS - GUESTS

  # GROUPS = {'jcasimir' => %w(
  #           marktabler
  #           worace
  #           nisargshah100
  #           dkaufman
  #           maryelizbeth
  #           eliseworthy
  #           darrellrivera
  #           austenito
  #           eweng
  #           tkiefhaber
  #           travisvalentine
  #           verdi327
  #           ),

  #           'mattyoho' => %w(
  #           cstrahan
  #           chrismanderson
  #           MikeSilvis
  #           tyre
  #           athal7
  #           conanr
  #           mrgilman
  #           mikesea
  #           1337807
  #           Andrewglass1
  #           adigitalnative
  #           JanKoszewski
  #           )}

  # TALK_GROUPS = {'group 1' => %w(
  #           cstrahan
  #           chrismanderson
  #           MikeSilvis
  #           athal7
  #           conanr
  #           mrgilman
  #           1337807
  #           JanKoszewski
  #           ),
  #           'group 2' => %w(
  #           marktabler
  #           maryelizbeth
  #           darrellrivera
  #           austenito
  #           eweng
  #           tkiefhaber
  #           mikesea
  #           Andrewglass1
  #           ),
  #           'group 3' => %w(
  #           worace
  #           tyre
  #           nisargshah100
  #           dkaufman
  #           eliseworthy
  #           travisvalentine
  #           adigitalnative
  #           verdi327
  #           )}
end
