json.extract! page, :id, :name, :desc, :text, :pagename_id, :locale_code, :created_at, :updated_at
json.url page_url(page, format: :json)