// app.service.ts
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class AppService {
  private apiUrl = 'http://localhost:3000/api/verify';

  constructor(private http: HttpClient) {}

  verifyDocument(documentType: number, documentNumber: number): Observable<any> {
    return this.http.post<any>(this.apiUrl, { documentType, documentNumber });
  }
}

