json.extract! person, :id, :fullname, :pic, :phone, :country_id, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
