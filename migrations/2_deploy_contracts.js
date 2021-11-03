// Migrations allow us to change the state of our contracts over time.
const TodoList = artifacts.require("TodoList.sol");

module.exports = function (deployer) {
  deployer.deploy(TodoList);
};
