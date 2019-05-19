pragma solidity ^0.5.1;
contract Courses {
    
    struct Instructor {
        uint BN;
        string name;
        string cn;
        string ex_date;
        string manu_date;
        string price;
    }
    
    mapping (address => Instructor) public instructors;
    address[] public instructorAccts;
    
    function setInstructor(address _add,uint _bn, string memory _name, string memory _cn,string memory _manu_date,string memory _ex_date,string memory _price) public {
        
        instructors[_add].BN = _bn;
        instructors[_add].name = _name;
        instructors[_add].cn = _cn;
        instructors[_add].manu_date = _manu_date;
        instructors[_add].ex_date = _ex_date;
        instructors[_add].price = _price;
        
        instructorAccts.push(_add);
    }
    
    function getInstructors() view public returns(address[] memory) {
        return instructorAccts;
    }
    
    function getInstructor(address _address) external view returns (uint, string memory, string memory,string memory,string memory) {
        return (instructors[_address].BN, instructors[_address].name, instructors[_address].cn,instructors[_address].manu_date,instructors[_address].ex_date);
    }
    
    function countInstructors() view public returns (uint) {
        return instructorAccts.length;
    }
    
    struct Transport{
        uint BN;
        string name;
        string cn;
        string ex_date;
        string manu_date;
        string price;
        string data;
        string timeTaken;
    }
    
    mapping (address => Transport) public transports;
    address[] public transportAccts;
    
    function setTransData(address _add,uint _bn, string memory _name, string memory _cn,string memory _manu_date,string memory _ex_date,string memory _price,string memory _data,string memory _tt) public {
        
        transports[_add].BN = _bn;
        transports[_add].name = _name;
        transports[_add].cn = _cn;
        transports[_add].manu_date = _manu_date;
        transports[_add].ex_date = _ex_date;
        transports[_add].price = _price;
        transports[_add].data = _data;
        transports[_add].timeTaken = _tt;
        
        transportAccts.push(_add);
    }
    
    function getTransportAccts() view public returns(address[] memory) {
        return transportAccts;
    }
    
    function getTransports(address _address) external view returns (string memory,string memory) {
        return (transports[_address].data,transports[_address].timeTaken);
    }
    
    function countTransports() view public returns (uint) {
        return instructorAccts.length;
    }
    
    function fullData(address _address) view public returns (uint, string memory,string memory,string memory,string memory,string memory,string memory){
        return(instructors[_address].BN, instructors[_address].name, instructors[_address].cn,instructors[_address].manu_date,instructors[_address].ex_date,transports[_address].data,transports[_address].timeTaken);
    }
    
}