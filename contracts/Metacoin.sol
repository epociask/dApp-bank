contract metaCoin {
    mapping(address => uint) balances;

    constructor() public{ //constructor
        balances[msg.sender] = 10000;
    }

    function sendCoin(address receiver, uint amount) public returns(bool sufficient) { //send function
        //msg.sender --> the senders 160 bit public key 
        if (balances[msg.sender]< amount) return false;
        balances[msg.sender]-=amount;
        balances[receiver]+=amount;
        return true;
    }
}