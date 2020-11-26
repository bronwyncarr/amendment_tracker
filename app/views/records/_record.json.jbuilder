json.extract! record, :id, :document_ref, :text, :error, :comment, :revision, :approved, :incorporated, :created_at, :updated_at
json.url record_url(record, format: :json)
