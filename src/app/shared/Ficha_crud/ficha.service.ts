import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class FichaService {
  DATABASE = 'http://localhost:3000'
  constructor(private http: HttpClient) { }

  obtenerFichaPrograma(): Observable<any>{
    return this.http.get<any>(this.DATABASE+'/fichas/fichaPrograma');
  }

}
