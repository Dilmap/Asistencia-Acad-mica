import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { ActualizarInstructorComponent } from '../actualizar-instructor/actualizar-instructor.component';

@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [CommonModule,ActualizarInstructorComponent],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})
export class RegistroAsistenciaComponent {
  isDivVisible: boolean = false;

  toggleDiv() {
    this.isDivVisible = !this.isDivVisible;
  }
}
