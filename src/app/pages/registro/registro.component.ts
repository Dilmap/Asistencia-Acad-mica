import { routes } from './../../app.routes';
import { FormBuilder, FormGroup, FormsModule, ReactiveFormsModule, Validators } from '@angular/forms';
import { InstructorService } from './../../shared/instructor_crud/instructor.service';
import { Component } from '@angular/core';
import { ActivatedRoute, Router, RouterLink } from '@angular/router';
import * as CryptoJS from 'crypto-js';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-registro',
  standalone: true,
  imports: [FormsModule, CommonModule, ReactiveFormsModule, RouterLink],
  templateUrl: './registro.component.html',
  styleUrl: './registro.component.css'
})

export class RegistroComponent {
  registroForm: FormGroup;

  constructor(
    private formbuilder: FormBuilder,
    private instructorService: InstructorService,
    private route: ActivatedRoute,
    private router: Router
  ) {
    this.registroForm = this.formbuilder.group({
      nombre: ['', [Validators.required, Validators.minLength(3)]],
      tipo_documento_iddocumento: ['1', Validators.required],
      numeroDocumento: ['', Validators.required],
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(6)]]
    });
  }

  validarPassword(password: string): boolean {
    const numeros = /[0-9]/;
    const letras = /[a-zA-Z]/;


    const hasnumeros = numeros.test(password);
    const hasletras = letras.test(password);


    return hasnumeros && hasletras;
  }

  mostrarErrores() {
    const controls = this.registroForm.controls;
    for (const name in controls) {
      if (controls[name].invalid) {
        const errors = controls[name].errors;
        if (errors?.['required']) {
          if(name === 'password'){
            alert(`La contraseña es requerida.`);
          }
          else{
            alert(`El ${name} es requerido.`);
            break;
          }
        }
        else if (errors?.['minlength']) {
          const minLength = errors['minlength'].requiredLength;
          if(name === 'password'){
            alert(`La contraseña debe tener al menos ${minLength} caracteres.`);
          }
          else{
            alert(`El ${name} debe tener al menos ${minLength} caracteres.`);
            break;
          }

        }
        else if (errors?.['email']) {
          alert(`${name} no es un email válido.`);
          break
        }
      }
    }
  }
  get form() { return this.registroForm.controls; }


  agregoInstructores() {
    if (this.registroForm.invalid) {
      this.mostrarErrores();
      return;
    }

    const formValues = this.registroForm.value;
    const isValidPassword = this.validarPassword(formValues.password);
    if (!isValidPassword) {
      alert('La contraseña debe tener como minimo una letra y un numero.');
      return;
    }

    this.instructorService.agregarInstructor(formValues).subscribe(
      (response) => {
        alert(response);
        this.router.navigate(['login']);
      }
    );
  }

}
