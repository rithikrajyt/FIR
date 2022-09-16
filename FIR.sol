// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract FIR{
    struct CaseDetails{
        string district;
        string PS;
        string sectionsApplied;
        
        string nameApplicant;
        uint UID;
        string officerInc;
        string dateOfIncident;
        string desc;
        uint  firTime;
        //other details of FIR
    }
    
    
    mapping (uint => CaseDetails)Case;
    



 
  

    

    function EnterCaseDetails(uint _caseno,string memory _nameApplicant, string memory _district,string memory _desc,string memory _officerInc,uint _UID)public{
  Case[_caseno].nameApplicant= _nameApplicant;
  Case[_caseno].officerInc= _officerInc;
  Case[_caseno].district= _district;
  Case[_caseno].desc= _desc;
  Case[_caseno].UID= _UID;
  Case[_caseno].firTime= block.timestamp;
    }
    function GetCaseDetails(uint _caseno) public view returns(string memory,string memory,uint,string memory,string memory,uint,string memory){
return (Case[_caseno].district , Case[_caseno].nameApplicant, Case[_caseno].firTime,Case[_caseno].desc,Case[_caseno].officerInc,Case[_caseno].UID,Case[_caseno].district);
    }
}