json.extract! case_doc, :id, :document_name, :created_at, :updated_at
json.url case_doc_url(case_doc, format: :json)
