import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  removeStep() {
    this.element.remove();
    this.showOnlyLastRemoveStepButton();
  }

  showOnlyLastRemoveStepButton() {
    let btns = document.querySelectorAll(".remove-step-button")
    let btnsCount = btns.length;
    btns.forEach((btn, i) => {
      if (i !== btnsCount - 1) {
        btn.classList.add("display-none");
      } else {
        btn.classList.remove("display-none");
      }
    });
  }
}
