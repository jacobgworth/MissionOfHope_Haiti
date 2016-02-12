json.array!(@orphan_sponsorships) do |orphan_sponsorship|
  json.extract! orphan_sponsorship, :id, :first_name, :age, :sponsorship_number, :bio, :image, :slug
  json.url orphan_sponsorship_url(orphan_sponsorship, format: :json)
end
