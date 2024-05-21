import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})
export class RegistroAsistenciaComponent {
  isDivVisible: boolean = false;

  toggleDiv() {
    this.isDivVisible = !this.isDivVisible;
  }
}
