import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { FormsModule } from '@angular/forms';
import { instructorModel } from './instructor.model';

@Injectable({
  providedIn: 'root'
})
export class InstructorService {
  DATABASE = 'http://localhost:3000' 
  constructor(private http: HttpClient) { }

  obtenerInstructores(){
    return this.http.get<instructorModel[]>(this.DATABASE + '/instructores');
  }

  obtenerInstructor(numeroDocumento: string){
    return this.http.get<instructorModel[]>(`${this.DATABASE}/instructores/${numeroDocumento}`);
  }

  agregarInstructor(instructor: instructorModel){
    return this.http.post<string>(`${this.DATABASE}/instructores`, instructor);
  }

  actualizarUsuario(instructor: instructorModel){
    return this.http.put<string>(`${this.DATABASE}/instructors/actualizar/${instructor.numeroDocumento}`, instructor);
  }

  borrarUsuario(numeroDocumento: string){
    return this.http.delete<string>(`${this.DATABASE}/instructors/borrar/${numeroDocumento}`);
  }
}
