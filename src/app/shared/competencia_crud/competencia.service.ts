import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { CompetenciaModel } from './competencias.model';


@Injectable({
  providedIn: 'root'
})
export class CompetenciaService {
  DATABASE = 'http://localhost:3000'
  constructor(private http: HttpClient) { }

  obtenerCompetencias(){
    return this.http.get<CompetenciaModel[]>(this.DATABASE + '/competencias');
  }
}
