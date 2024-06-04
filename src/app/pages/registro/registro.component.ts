import { routes } from './../../app.routes';
import { FormsModule } from '@angular/forms';
import { InstructorService } from './../../shared/instructor_crud/instructor.service';
import { Component } from '@angular/core';
import { InstructorModel } from '../../shared/instructor_crud/instructor.model';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-registro',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './registro.component.html',
  styleUrl: './registro.component.css'
})

export class RegistroComponent {
  instructor = new InstructorModel("", "", "1", "", "")

  constructor(
    private InstructorService: InstructorService,
    private route: ActivatedRoute,
    private router: Router
  ){ }

  agregoInstructores(){
    this.InstructorService.agregarInstructor(this.instructor).subscribe(datos => {
      alert(datos);
      this.router.navigate(['login'])
    }
  );}
}
