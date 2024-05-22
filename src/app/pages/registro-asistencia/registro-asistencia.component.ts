import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { InstructorService } from './../../shared/instructor_crud/instructor.service';
import { Observable } from 'rxjs';
import { instructorModel } from './../../shared/instructor_crud/instructor.model';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})
export class RegistroAsistenciaComponent implements OnInit{
  isDivVisible: boolean = false;

  id= ''
  instructor= new instructorModel("", "", "", "", "")

  constructor(
    private instructorService: InstructorService,
    private route: ActivatedRoute,
    private router: Router
  ){ }


  ngOnInit(){
    this.id = this.route.snapshot.params['id']
    if(this.id){
      this.instructorService.obtenerInstructor(this.id).subscribe(data =>{
        this.instructor = data[0]
      });
    }
  }

  toggleDiv() {
    this.isDivVisible = !this.isDivVisible;
  }
}
