pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCount = 0; // this is a state variable that changes the data in the blockchain

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks; // the public keyword creates a function (tasks) that can be called by anyone

    constructor() public {
        // this is a constructor function that runs when the contract is created
        // it is used to initialize the state of the contract
        createTask("Buy milk");
        createTask("Buy eggs");
        createTask("Buy bread");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false); // Task(1, "Buy milk", false)
    }
}
