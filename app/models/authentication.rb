class Authentication < ActiveRecord::Base
  belongs_to :person

  def self.find_or_create_person(credentials)
    unless person = find_person(credentials['provider'], credentials['uid'].to_s) then
      info = credentials['info']
      first_name, *_, last_name = info['name'].split.map(&:strip) if info['name'].present?

      transaction do
        person = Person.new(first_name:    first_name,
                            last_name:     last_name,
                            email:         info['email'])
        person.github_handle = info['nickname']
        person.save!
        create(provider: credentials['provider'], uid: credentials['uid'].to_s, person: person)
      end
    end

    person
  end

  def self.find_person(provider, uid)
    auth = where(provider: provider, uid: uid).includes(:person).first
    auth && auth.person
  end
end
