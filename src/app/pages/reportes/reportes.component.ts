import { Component } from '@angular/core';

import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatNativeDateModule } from '@angular/material/core';
import { MatButtonModule } from '@angular/material/button';
import { FormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { CommonModule } from '@angular/common';


@Component({
  selector: 'app-reportes',
  standalone: true,
  imports: [MatDatepickerModule,MatFormFieldModule,MatInputModule,MatNativeDateModule,MatButtonModule,FormsModule,CommonModule],
  templateUrl: './reportes.component.html',
  styleUrl: './reportes.component.css'
})
export class ReportesComponent {
  mostrarcalendario:boolean=false
  mostrarr(){
    this.mostrarcalendario=!this.mostrarcalendario;
  }
  startDateValue!: Date;
  endDateValue!: Date;
}
