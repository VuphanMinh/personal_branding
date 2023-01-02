import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';
import '@/channels';
import '@/controllers/admin';
// import '@tabler/core/dist/css/tabler.min.css';
// import '@/scss/admin/index.scss';
// import "@/scss/admin/actiontext.scss";
// import './select2';
// import './actiontext.css';
// import 'moment/moment.js'
// import 'bootstrap-daterangepicker/daterangepicker.js'

// https://blog.carbonfive.com/migrating-from-sprockets-to-webpacker/
import "stylesheets/admin"

require("trix")
require("@rails/actiontext")

Rails.start();
Turbolinks.start();
ActiveStorage.start();
require.context('@/images', true);

// document.addEventListener('turbolinks:load', () => {
//   import('@tabler/core/dist/js/tabler.min');
// });
