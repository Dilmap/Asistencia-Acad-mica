import { CommonModule } from '@angular/common';
import { ActualizarInstructorComponent } from '../actualizar-instructor/actualizar-instructor.component';
import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Observable } from 'rxjs';
import { competenciaModel } from '../../shared/competencia_crud/competencia.model';
import { CompetenciaService } from '../../shared/competencia_crud/competencia.service';


@Component({
  selector: 'app-registro-asistencia',
  standalone: true,
  imports: [CommonModule,ActualizarInstructorComponent, FormsModule],
  templateUrl: './registro-asistencia.component.html',
  styleUrl: './registro-asistencia.component.css'
})

export class RegistroAsistenciaComponent implements OnInit{

  isDivVisible: boolean = false;

  competencias: Observable<competenciaModel[]> | undefined

  constructor(private competenciaService: CompetenciaService){}

  ngOnInit(){
    this.competencias = this.competenciaService.obtenerCompetencias();
  }

  toggleDiv() {
    this.isDivVisible = !this.isDivVisible;
  }

}
