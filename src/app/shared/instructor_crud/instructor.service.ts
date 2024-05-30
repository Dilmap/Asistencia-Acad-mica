import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class InstructorService {
  DATABASE = 'http://localhost:3000'
  constructor(private http: HttpClient) { }

  obtenerInstructores(): Observable<any>{
    return this.http.get<any>(this.DATABASE + '/instructores');
  }

  obtenerInstructor(numeroDocumento: string){
    return this.http.get<any>(`${this.DATABASE}/instructores/${numeroDocumento}`);
  }

  agregarInstructor(instructor: any): Observable<string>{
    return this.http.post<string>(`${this.DATABASE}/instructores`, instructor);
  }

  actualizarUsuario(instructor:any): Observable<string>{
    return this.http.put<string>(`${this.DATABASE}/instructors/actualizar/${instructor.numeroDocumento}`, instructor);
  }

  borrarUsuario(numeroDocumento: string): Observable<string>{
    return this.http.delete<string>(`${this.DATABASE}/instructors/borrar/${numeroDocumento}`);
  }
}
