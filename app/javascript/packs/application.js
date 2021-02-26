// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
import 'styles/home'
import "controllers"


document.addEventListener("turbolinks:load", function() {
const drop = document.querySelector('.click');
const menu = document.querySelector('.dropnav');
drop.onclick = ((e)=>{
    event.stopPropagation();
  if (menu.style.display === "none") {
    menu.style.display = "flex";
  } else {
    menu.style.display = "none";
  }
    if (!menu) {
      menu.style.display="none"}
});
})