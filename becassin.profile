<?php 

error_log("message4");
function becassin_install_tasks( &$install_state ){
  error_log("message5");
  $tasks = array();

  $task['machine_name'] = array(
    'display_name' => st('Human-readable task name'),
    'display' => TRUE,
    'type' => 'normal',
    'run' => INSTALL_TASK_RUN_IF_REACHED,
    'function' => 'function_to_execute',
  );
  $task['machine_name2'] = array(
    'display_name' => st('Human-readable task name'),
    'display' => TRUE,
    'type' => 'normal',
    'run' => INSTALL_TASK_RUN_IF_REACHED,
    'function' => 'function_to_execute2',
  );

  return $tasks;
}

function function_to_execute(){
  error_log(42);
}

?>