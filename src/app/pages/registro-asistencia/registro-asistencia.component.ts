import { InstructorService } from './../../shared/instructor_crud/instructor.service';
import { Observable } from 'rxjs';
import { instructorModel } from './../../shared/instructor_crud/instructor.model';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})
export class RegistroAsistenciaComponent implements OnInit{
  instructores: Observable<instructorModel[]> | undefined

  constructor(private instructorService: InstructorService){ }

  ngOnInit(){
    this.instructores = this.instructorService.obtenerInstructores();
  }
}
