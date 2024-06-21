import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]

  connect() {
    document.addEventListener('click', (event) => {
      if (!this.element.contains(event.target)) { // Checks if the click is outside the navbar element
        this.menuTarget.classList.add('hidden'); // Hides the menu
      }
    });
  }

  toggleMenu(event) {
    event.stopPropagation(); // Stops the click from propagating to the document level handler
    this.menuTarget.classList.toggle('hidden'); // Toggles visibility of the menu
  }
}

