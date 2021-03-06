def to_button string
  return "new_task_button" if string == "the new task button"
  return "task_submit_button" if string == "the new task submit button"
  return "edit_task_button" if string == "the edit task button"
  return "task_submit_button" if string == "the edit task submit button"
  return "apply_for_a_task_button" if string == "the apply for a task button"
  return "task_expired_button" if string == "the task expired button"
  return "deliver_submit_button" if string == "the delivery submit button"
  return "accept_delivery_button" if string == "the accept delivery button"
  return "reject_delivery_button" if string == "the reject delivery button"
  return "load_more_available_tasks_button" if string == "the load more available tasks button"
  raise "I don't know '#{string}'"
end

def to_field string
  return "task_title" if string == "the task title field"
  return "task_description" if string == "the task description field"
  return "task_max_deliveries" if string == "the task max deliveries field"
  return "task_remote" if string == "the task remote field"
  return "task_task_type_id" if string == "the task type field"
  return "task_skills_programacao_de_softwares_e_aplicativos_ou_web" if string == "the task programming skill field"
  return "task_deadline" if string == "the task deadline field"
  return "task_material" if string == "the task material field"
  return "task_handout" if string == "the task handout field"
  return "task_deliverable" if string == "the task deliverable field"
  return "task_points" if string == "the task points field"
  return "task_hashtag" if string == "the task hashtag field"
  return "delivery_text" if string == "the delivery text field"
  return "delivery_file" if string == "the delivery file field"
  return "task_call_to_action" if string == "the task call to action field"
  return "task_organization_id" if string == "the city field"
  raise "I don't know '#{string}'"
end

def to_route string
  return task_path(Task.order(:id).last) if string == "the created task page"
  return root_path if string == "the homepage"
  return task_path(@task) if string == "this task page"
  return about_path if string == "the about page"
  raise "I don't know '#{string}'"
end

def to_element string
  return '.title' if string == 'this task title'
  return '.mobilization' if string == 'this task mobilization'
  return '.category' if string == 'this task category'
  return '.description' if string == 'this task description'
  return '.deadline' if string == 'this task deadline'
  return '.points' if string == 'this task points'
  return '.skills' if string == 'this task skills'
  return ".title_field.error" if string == "the task title error message"
  return "#new_task_button" if string == "the new task button"
  return "#edit_task_button" if string == "the edit task button"
  return ".remaining" if string == "the remaining warn for this task"
  return "#apply_for_a_task_button" if string == "the apply for a task button"
  return "#task_expired_button" if string == "the task expired button"
  return "#accept_delivery_button" if string == "the accept delivery button"
  return ".delivery .by" if string == "my delivery"
  return ".delivery.accepted" if string == "the accepted delivery"
  return ".delivery.rejected" if string == "the rejected delivery"
  return ".delivery.pending" if string == "the pending delivery"
  return ".delivery-text-field.error" if string == "the delivery text error message"
  return ".wait-for-validation" if string == "the wait for validation warn"
  return ".task-warn .rejected" if string == "the task rejected warn"
  return ".task-warn .accepted" if string == "the task completed warn"
  return "#task_completed_button" if string == "the task completed button"
  return "#reject_delivery_button" if string == "the reject delivery button"
  return "#deliver_submit_button" if string == "the deliver task button"
  return "#waiting_for_validation_button" if string == "the waiting for validation button"
  return "#available_tasks .empty" if string == "a warning saying that there is no available task"
  return ".task .title" if string == "this task"
  return ".main .share .facebook-share-button" if string == "the Facebook share button of this task"
  return ".main .share .twitter-share-button" if string == "the Twitter share button of this task"
  return "#load_more_available_tasks_button" if string == "the load more available tasks button"
  return "#thanks-for-applying" if string == "the thank you for applying message"
  return ".subscriber-link" if string == "this user appliance"
  return ".pages.about" if string == "the about section"
  raise "I don't know '#{string}'"
end

def to_text string
  return @task.reload.title if string == 'this task title'
  return @task.reload.mobilization.short_title if string == 'this task mobilization'
  return @task.reload.category.name if string == 'this task category'
  return @task.reload.description if string == 'this task description'
  return @task.reload.points if string == 'this task points'
  return @task.reload.formatted_deadline if string == 'this task deadline'
  return @task.reload.title if string == 'this task'
  return @current_user.name if string == 'my delivery'
  return @user.first_name if string == "this user appliance"
end

def to_file string
  return "#{Rails.root}/features/support/files/delivery.txt" if string == "the delivery file"
  raise "I don't know file '#{string}'"
end
