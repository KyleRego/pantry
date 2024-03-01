import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "stepLabel", "stepTextarea", "notesLabel", "notesTextarea", "numberInput" ];

  connect() {
    let thisStepsNumber = -1 + document.querySelectorAll(".step-list-item").length;

    this.stepLabelTarget.setAttribute("for", `recipe_steps_attributes_${thisStepsNumber}_step`);
    this.stepLabelTarget.textContent = `Step ${thisStepsNumber}:`;

    this.stepTextareaTarget.setAttribute("name", `recipe[steps_attributes][${thisStepsNumber}][step]`);
    this.stepTextareaTarget.setAttribute("id", `recipe_steps_attributes_${thisStepsNumber}_step`);
  
    this.notesLabelTarget.setAttribute("for", `recipe_steps_attributes_${thisStepsNumber}_notes`);

    this.notesTextareaTarget.setAttribute("name", `recipe[steps_attributes][${thisStepsNumber}][notes]`);
    this.notesTextareaTarget.setAttribute("id", `recipe_steps_attributes_${thisStepsNumber}_notes`);

    this.numberInputTarget.setAttribute("value", thisStepsNumber);
    this.numberInputTarget.setAttribute("name", `recipe[steps_attributes][${thisStepsNumber}][number]`);
    this.numberInputTarget.setAttribute("id", `recipe_steps_attributes_${thisStepsNumber}_number`);
  }
}
