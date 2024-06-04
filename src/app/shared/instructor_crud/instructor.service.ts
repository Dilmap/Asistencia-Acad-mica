import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { InstructorModel } from './instructor.model';

@Injectable({
  providedIn: 'root'
})
export class InstructorService {
  DATABASE = 'http://localhost:3000'
  constructor(private http: HttpClient) { }

  obtenerInstructores(){
    return this.http.get<InstructorModel[]>(this.DATABASE + '/instructores');
  }

  obtenerInstructor(numeroDocumento: string){
    return this.http.get<InstructorModel[]>(`${this.DATABASE}/instructores/${numeroDocumento}`);
  }

  agregarInstructor(instructor: InstructorModel){
    return this.http.post<string>(`${this.DATABASE}/instructores/agregar`, instructor);
  }

  actualizarUsuario(instructor: InstructorModel){
    return this.http.put<string>(`${this.DATABASE}/instructors/actualizar/${instructor.numeroDocumento}`, instructor);
  }

  borrarUsuario(numeroDocumento: string){
    return this.http.delete<string>(`${this.DATABASE}/instructors/borrar/${numeroDocumento}`);
  }
}
