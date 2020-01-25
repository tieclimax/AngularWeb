import { EmployeeService } from './../../../Service/employee.service';
import { Component, OnInit,Input,Output,EventEmitter } from '@angular/core';

@Component({
  selector: 'app-search-form',
  templateUrl: './search-form.component.html',
  styleUrls: ['./search-form.component.css']
})
export class SearchFormComponent implements OnInit {
  
  @Input()

  @Output()
  addToList = new EventEmitter();

  firstName : string;
  lastName : string;
   departmentSelected;
   genderSelected;

    genderList = [{
      label : 'male',
      value : 'M'
        },
        {  
      label : 'female',
      value : 'F'
      }];
  
  
      departmentList = [
      {
          departmentCode : '001' ,
          departmentName : 'sale',

      },
      {
        departmentCode : '002' ,
        departmentName : 'IT',
      },{
        departmentCode : '003' ,
        departmentName : 'HR',
      }
 ]

  constructor(public employeeService : EmployeeService) { }

  ngOnInit() {
    this.employeeService.hello();
  }
  
  addClick(event) {
    console.log('value' , {
      departmentCode: this.departmentSelected.departmentCode,
      gender: this.genderSelected,
      firstName : this.firstName,
      lastName : this.lastName
    });
   
    this.addToList.emit({
      departmentCode: this.departmentSelected.departmentCode,
      gender: this.genderSelected,
      firstName : this.firstName,
      lastName : this.lastName
    });

  }
}
