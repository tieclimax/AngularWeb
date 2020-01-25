import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { FirstComponent } from './components/first/first.component';
import {FormsModule} from '@angular/forms';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import { SearchPageModule } from './components/search-page/search-page.module';

@NgModule({
  declarations: [
    AppComponent,
    FirstComponent
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    BrowserAnimationsModule,
    SearchPageModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
