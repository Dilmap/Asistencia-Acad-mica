import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { FichaModel } from './ficha.model';

@Injectable({
  providedIn: 'root'
})
export class FichaService {
  DATABASE = 'http://localhost:3000'
  constructor(private http: HttpClient) { }

  obtenerFichaPrograma(){
    return this.http.get<FichaModel[]>(this.DATABASE+'/fichas/fichaPrograma');
  }

}
