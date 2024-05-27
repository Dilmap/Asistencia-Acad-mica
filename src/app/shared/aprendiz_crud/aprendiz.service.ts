import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { aprendizModel } from './aprendiz.model';


@Injectable({
  providedIn: 'root'
})
export class AprendizService {
  DATABASE = 'http://localhost:3000'
  constructor(private http: HttpClient) { }

  obtenerAprendices(){
    return this.http.get<aprendizModel[]>(this.DATABASE + '/aprendices');
  }
}
