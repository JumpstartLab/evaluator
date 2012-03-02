class Authentication < ActiveRecord::Base
  belongs_to :person

  def self.person(credentials)
    if auth = find_by_provider_and_uid(credentials['provider'], credentials['uid']) then
      person = auth.person
    else
      info = credentials['info']
      first_name, *_, last_name = info['name'].split.map(&:strip)

      transaction do
        person = Person.create(first_name:    first_name,
                               last_name:     last_name,
                               email:         info['email'],
                               github_handle: info['nickname'])
        create(provider: credentials['provider'], uid: credentials['uid'], person: person)
      end
    end

    person
  end
end
