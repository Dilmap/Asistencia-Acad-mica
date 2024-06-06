import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-guardar-asistencia',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './guardar-asistencia.component.html',
  styleUrl: './guardar-asistencia.component.css'
})
export class GuardarAsistenciaComponent {
  mostrar:boolean=false ;
  mostrarExcusa:boolean = false;

  mostrarr(){
    this.mostrar=!this.mostrar;
  }
  mostrarE(){
    this.mostrarExcusa=!this.mostrarExcusa;
  }
}
