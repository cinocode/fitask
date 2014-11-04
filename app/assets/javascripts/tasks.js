$(document).ready(function() {
  $("a[id^='task_check_']").mouseenter(function() { $(this).html("[x]"); });
  $("a[id^='task_check_']").mouseleave(function() { $(this).html("[_]"); });
});