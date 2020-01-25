import { SearchPageComponent } from './search-page.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SearchFormComponent } from './search-form/search-form.component';
import {RadioButtonModule} from 'primeng/radiobutton';
import {PanelModule} from 'primeng/panel';
import {DropdownModule} from 'primeng/dropdown';
import {InputTextModule} from 'primeng/inputtext';
import { FormsModule } from '@angular/forms';
import { ResultListComponent } from './result-list/result-list.component';
import {ButtonModule} from 'primeng/button';
@NgModule({
  declarations: [SearchPageComponent, SearchFormComponent, ResultListComponent],
  imports: [
    FormsModule,
    CommonModule,
    PanelModule,
    DropdownModule,
    RadioButtonModule,
    InputTextModule,
    ButtonModule
  ], 
  exports : [
    SearchPageComponent
  ]
})
export class SearchPageModule { }
