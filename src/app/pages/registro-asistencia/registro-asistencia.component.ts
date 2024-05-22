import { CommonModule } from '@angular/common';
import { ActualizarInstructorComponent } from '../actualizar-instructor/actualizar-instructor.component';
import { Component, OnInit } from '@angular/core';
import { InstructorService } from './../../shared/instructor_crud/instructor.service';
import { instructorModel } from './../../shared/instructor_crud/instructor.model';
import { ActivatedRoute, Router } from '@angular/router';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [CommonModule,ActualizarInstructorComponent, FormsModule],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})

export class RegistroAsistenciaComponent {
  isDivVisible: boolean = false;

  // id= ''
  // instructor= new instructorModel("", "", "", "", "")

  // constructor(
  //   private instructorService: InstructorService,
  //   private route: ActivatedRoute,
  // ){ }


  // ngOnInit(){
  //   this.id = this.route.snapshot.params['id']
  //   this.instructorService.obtenerInstructor(this.id)
  // }

  toggleDiv() {
    this.isDivVisible = !this.isDivVisible;
  }
}
