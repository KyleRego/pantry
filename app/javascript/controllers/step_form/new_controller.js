import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "stepLabel", "stepTextarea", "notesLabel", "notesTextarea", "numberInput" ];

  connect() {
    let thisStepsNumber = document.querySelectorAll(".step-list-item").length;
    let key = thisStepsNumber + 1;

    this.stepLabelTarget.setAttribute("for", `recipe_steps_attributes_${key}_step`);
    this.stepLabelTarget.textContent = `Step ${thisStepsNumber}:`;

    this.stepTextareaTarget.setAttribute("name", `recipe[steps_attributes][${key}][step]`);
    this.stepTextareaTarget.setAttribute("id", `recipe_steps_attributes_${key}_step`);
  
    this.notesLabelTarget.setAttribute("for", `recipe_steps_attributes_${key}_notes`);

    this.notesTextareaTarget.setAttribute("name", `recipe[steps_attributes][${key}][notes]`);
    this.notesTextareaTarget.setAttribute("id", `recipe_steps_attributes_${key}_notes`);

    this.numberInputTarget.setAttribute("value", thisStepsNumber);
    this.numberInputTarget.setAttribute("name", `recipe[steps_attributes][${key}][number]`);
    this.numberInputTarget.setAttribute("id", `recipe_steps_attributes_${key}_number`);

    this.showOnlyLastRemoveStepButton();
  }

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
