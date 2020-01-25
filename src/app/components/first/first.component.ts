import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-first',
  templateUrl: './first.component.html',
  styleUrls: ['./first.component.css']
})
export class FirstComponent implements OnInit {
  @Input()
  name = 'exname';

  num = 0;
  @Output()
  valueChange = new EventEmitter();
  constructor() { }

  ngOnInit() {
  }

  onInput(event) {
    console.log(event.target.value);
    this.name = event.target.value;
  }
  onBlur(event) {
    this.valueChange.emit(event.target.value);
  }

  plus(event) {
    this.num++;
  }
  minus(event) {
    this.num--;
  }
}
