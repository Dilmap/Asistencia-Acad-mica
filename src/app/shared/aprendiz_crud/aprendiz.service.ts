import { Observable } from 'rxjs';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class AprendizService {
  DATABASE = 'http://localhost:3000'
  constructor(private http: HttpClient) { }

  obtenerAprendices(): Observable<any>{
    return this.http.get<any>(this.DATABASE+'/aprendices');
  }
}
