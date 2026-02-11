# Note: This file is kept for compatibility but the app uses esbuild (jsbundling-rails)
# JavaScript is bundled via npm run build (see package.json)

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "controllers", to: "controllers/index.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@rails/actioncable", to: "actioncable.esm.js"
pin "channels", to: "channels/index.js"
pin_all_from "app/javascript/channels", under: "channels"
pin "bootstrap"
pin "@popperjs/core", to: "@popperjs--core.js"
