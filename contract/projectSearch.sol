pragma solidity ^0.5.0;

import "companyOutsourcing.sol";
import "setProject.sol";
import "projectInterface.sol";


contract projectSearch is projectInterface {
	
	mapping(uint => mapping(string => categoryInfo )) private cateTotitle;

	function setprojectCate(
		string projecttitle,
		string calldata tag1,
		string calldata tag2,
		string calldata tag3,
		string calldata tag4) }
	

	function getprojectCate(string projecttitle , string calldata) external view returns  (
		string memory tag1,
		string memory tag2,
		string memory tag3,
		string memory tag4
	) {
		
		categoryInfo memory catefo = cateTotitle[projecttitle];
		
		return (
			catefo.tag1,
			catefo.tag2,
			catefo.tag3,
			catefo.tag4
		);
	}
	
	// Gets the IDs of released games.
	// 출시된 게임 ID들을 가져옵니다.
	function getContractedProj() public view returns (uint[] memory) {
		
		uint proCount = 0;
		
		for (uint i = 0; i < .getProCount(); i += 1) {
			
			(
                string category;
                string projecttitle;//프로젝트 이름
                string projectperiod;
                uint budget;
                string planningstatus;
                string projectcontent;
                string relatedtechnology;
                string enterdeadline;
                string premeeting;
                string clientlocation;
                string enterclientdeadline;
                string enterclientstartdate;
			) 
			
			if (
		//계약 성사되었는지
			contracted == true) {
				
				projCount += 1;
			}
		}
		
		
}