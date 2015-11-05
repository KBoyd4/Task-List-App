json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :priority, :duedate, :completed, :tasklist_id
  json.url task_url(task, format: :json)
end
