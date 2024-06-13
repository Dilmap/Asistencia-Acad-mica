import { InstructorService } from './../../shared/instructor_crud/instructor.service';
import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormBuilder, FormGroup, FormsModule, ReactiveFormsModule, Validators } from '@angular/forms';
import { ActivatedRoute, Router, RouterLink } from '@angular/router';
import { response } from 'express';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [RouterLink, FormsModule, CommonModule, ReactiveFormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {
  loginForm: FormGroup;

  constructor(
    private formbuilder: FormBuilder,
    private instructorService: InstructorService,
    private route: ActivatedRoute,
    private router: Router
  ){
    this.loginForm = this.formbuilder.group({
      numeroDocumento: ['', Validators.required],
      password: ['', Validators.required]
    });
  }

  mostrarErrores() {
    const controls = this.loginForm.controls;
    for (const name in controls) {
      if (controls[name].invalid) {
        const errors = controls[name].errors;
        if (errors?.['required']) {
          if(name === 'password'){
            alert(`La contraseña es requerida.`);
            break;
          }
          else{
            alert(`El ${name} es requerido.`);
            break;
          }
        }
      }
    }
  }
  get form() { return this.loginForm.controls; }


  validoInstructores(){
    if (this.loginForm.invalid) {
      this.mostrarErrores();
      return;
    }

    const { numeroDocumento, password } = this.loginForm.value;

    this.instructorService.inicioSesionUsuario(numeroDocumento, password).subscribe(
      (response) => {
        if (response === 'Login exitoso.') {
          this.router.navigate(['registroAsistencia']);
        } else {
          alert(response);
        }
      });
  }
}
