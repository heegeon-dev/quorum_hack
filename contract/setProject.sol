pragma solidity ^0.5.0;

contract SetProject{
    
    address public contractAddress;
    
    
    struct Company{
        
       uint comId;
       string email;

    }
    
    struct DownCompany{
        
        uint comId;
        uint whatNode;  //파트너 형태
        string comName;
        uint sex;
        // string email;
        string[] goodSection;
        string[] goodDesign;
    }
    
    struct projectInfo{
        
        // 계약서의 해시값
        
        bool contracted;
        bool finished;
        
        Company proj_company;
        DownCompany proj_downcom;
        
        string category; //카테고리
        string projecttitle;//프로젝트 이름
        uint projectperiod; 
        uint budget;
        uint planningstatus; // status 0, 1, 2 
        string  projectcontent;
        string relatedtechnology;
        uint  enterdeadline;
        string  premeeting;
        string clientlocation;
        uint enterclientdeadline;
        uint enterclientstartdate;
        rfp[] r;
    
    }


    struct rfp{
        string subtitle;
        string totaldevperiod;
        string techfeecollection;
        string researchpoint;
    }
    

    mapping( address => DownCompany) public downCompanyM;
    mapping( address => Company) public companyM;
    mapping( address => projectInfo) public projectM;
    
    
    function SetProject() public{
        
        contractAddress = msg.sender;
        projectM[contractAddress].contracted = false;
        projectM[contractAddress].finished = false;
        
    }
    
    function companyAccount(uint uid, bool whichCom, address add) public{
        //address add, string _businessRegistrationNumber, string _companyName , string _login_id
        companyM[add].rgadd = add;
        companyM[add].id = uid;       

    }
    
    function downCompanyAccount(address add, string comName, uint uid) public {
        //address add, string _socialRegistrationNumber, string _personName, string _login_id
        downCompanyM[add].rgadd = add;
        downCompanyM[add].comName = comName;
        downCompanyM[add].id = uid;        
        
        
    }
    


      

    
    function makeContract(address _downCom, address _com,string category, string projecttitle, uint projectperiod,  uint budget, uint planningstatus, string  projectcontent, string relatedtechnology, uint  enterdeadline, string  premeeting,string clientlocation,uint enterclientdeadline,uint enterclientstartdate,rfp[] r) 
                        public{
        
        require( companyM[_com].rgadd == _com);
        require( downCompanyM[_downCom].rgadd == _downCom);
        
        projectM[contractAddress].contracted = true;
        projectM[contractAddress].finished = false;
        projectM[contractAddress].proj_company = companyM[_com];
        projectM[contractAddress].proj_downcom = downCompanyM[_downCom];
        
        projectM[contractAddress].category = category;
        projectM[contractAddress].projecttitle = projecttitle;
        projectM[contractAddress].projectperiod = projectperiod;
        projectM[contractAddress].budget = budget;
        projectM[contractAddress].planningstatus = planningstatus;
        projectM[contractAddress].projectcontent = projectcontent;
        projectM[contractAddress].relatedtechnology = relatedtechnology;
        projectM[contractAddress].enterdeadline = enterdeadline;
        projectM[contractAddress].premeeting = premeeting;
        projectM[contractAddress].clientlocation = clientlocation;
        projectM[contractAddress].enterclientdeadline = enterclientdeadline;
        projectM[contractAddress].enterclientstartdate = enterclientstartdate;
        //projectM[contractAddress].rfp  = r; rfp[] r
        
        
        
        
    }
    
    function getContractInfo() view returns (bool, bool, string, uint, string,string,string,string,string,string,string,string) {
        
        return (projectM[contractAddress].contracted, 
                projectM[contractAddress].finished,
                projectM[contractAddress].category, 
                projectM[contractAddress].projecttitle, 
                projectM[contractAddress].projectperiod,
                projectM[contractAddress].budget,
                projectM[contractAddress].planningstatus,
                projectM[contractAddress].projectcontent,
                projectM[contractAddress].relatedtechnology,
                projectM[contractAddress].enterdeadline,
                projectM[contractAddress].premeeting,
                projectM[contractAddress].clientlocation,
                projectM[contractAddress].enterclientdeadline,
                projectM[contractAddress].enterclientstartdate
                 //projectM[contractAddress].rfp

                );
    }
    


    
}