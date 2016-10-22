const COMMON_MODULE_NAME = 'common';

export default class ModuleLoader {
  constructor() {
    this.body = document.body;
    this.controller = this.body.getAttribute('data-controller');
    this.action = this.body.getAttribute('data-action');
  }

  exec() {
    let modulePathItems = [].slice.call(arguments);
    let modulePath = modulePathItems.join('/');

    // In order to remove throwing error on requiring non existed module
    // we are defining empty module, and for case when module has been defined before
    // will be used previous definition

    define(modulePath, () => {});
    require(modulePath);
  }

  load() {
    if (this.controller && this.action) {
      this.exec(COMMON_MODULE_NAME);
      this.exec(this.controller);
      this.exec(this.controller, this.action);
    }
  }
}
