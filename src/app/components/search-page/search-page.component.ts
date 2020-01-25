import { EmployeeService } from './../../Service/employee.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-search-page',
  templateUrl: './search-page.component.html',
  styleUrls: ['./search-page.component.css']
})
export class SearchPageComponent implements OnInit {
  dataList = [];

  constructor() { }

  ngOnInit() {
  }
 addData($event : any){
 this.dataList.push($event);
 }
}
