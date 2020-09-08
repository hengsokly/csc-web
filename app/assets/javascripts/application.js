//= require rails-ujs
//= require activestorage
//= require turbolinks

//= require jquery3
//= require popper
//= require bootstrap

//= require sb-admin-2
//= require survey_form/application

document.addEventListener("turbolinks:load", function() {
  window.SurveyForm.Form.init();
})
